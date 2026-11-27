#!/usr/bin/env python3
"""Prepare a case with installed model cards, then run HSPICE."""
from pathlib import Path
import argparse,json,re,shutil,subprocess
ROOT=Path(__file__).resolve().parents[1]
CASES=json.loads((ROOT/'simulation/cases.json').read_text())
INCLUDE=re.compile(r'(?im)^(\s*\.include\s+)[\'\"]([^\'\"]+)[\'\"]')

def dependencies(source,seen):
 source=source.resolve();source.relative_to(ROOT)
 if source in seen:return
 seen.add(source)
 for match in INCLUDE.finditer(source.read_text()):
  name=match[2]
  if name.startswith('@MODELS@/'):continue
  dependencies(ROOT/name,seen)

def main():
 p=argparse.ArgumentParser(description=__doc__)
 p.add_argument('--list',action='store_true');p.add_argument('--check',action='store_true')
 p.add_argument('--case',choices=sorted(CASES));p.add_argument('--models-dir',type=Path)
 p.add_argument('--hspice',default='hspice');p.add_argument('--output-dir',type=Path)
 p.add_argument('--prepare-only',action='store_true');a=p.parse_args()
 if a.list:
  for name in CASES:print(name)
  return
 if a.check:
  seen=set()
  for case in CASES.values():dependencies(ROOT/case['deck'],seen)
  print(f'PASS: {len(CASES)} cases; {len(seen)} project SPICE inputs resolve. External models are not bundled.')
  return
 if not a.case:p.error('Choose --case, --list or --check.')
 if not a.models_dir:p.error('--models-dir must contain your installed VTL/VTG model cards.')
 models=a.models_dir.resolve()
 for name in ['NMOS_VTL.inc','PMOS_VTL.inc','NMOS_VTG.inc','PMOS_VTG.inc']:
  if not (models/name).is_file():p.error(f'Missing model card: {name}')
 executable=None if a.prepare_only else shutil.which(a.hspice)
 if not a.prepare_only and executable is None:p.error('HSPICE not found; source your tool environment or specify --hspice.')
 out=(a.output_dir or ROOT/'simulation/output'/a.case).resolve();out.mkdir(parents=True,exist_ok=False)
 staged={}
 def stage(source):
  source=source.resolve();relative=source.relative_to(ROOT)
  if source in staged:return staged[source]
  target=out/'inputs'/relative;staged[source]=target;target.parent.mkdir(parents=True,exist_ok=True)
  def replace(match):
   name=match[2]
   dest=models/name.split('/',1)[1] if name.startswith('@MODELS@/') else stage(ROOT/name)
   if '"' in str(dest):raise ValueError('Include paths cannot contain double quotes.')
   return match[1]+'"'+str(dest)+'"'
  target.write_text(INCLUDE.sub(replace,source.read_text()));return target
 deck=stage(ROOT/CASES[a.case]['deck'])
 print('Prepared:',deck)
 if a.prepare_only:return
 command=[executable,'-i',str(deck),'-o',str(out/'sim')]
 with (out/'stdout.log').open('w') as log:subprocess.run(command,cwd=ROOT,stdout=log,stderr=subprocess.STDOUT,check=True)
 listing=out/'sim.lis'
 if not listing.is_file() or 'job concluded' not in listing.read_text(errors='replace').lower():raise RuntimeError(f'Simulator did not conclude normally. Inspect {out}.')
 print('Completed:',out)
if __name__=='__main__':main()
