#!/usr/bin/env python3
"""Recheck recorded numerical outcomes, independent of summary PASS labels."""
from pathlib import Path
import argparse,hashlib,json,math,re
ROOT=Path(__file__).resolve().parents[1]
CASES=json.loads((ROOT/'simulation/cases.json').read_text())
def measurements(path):
 lines=[s.strip() for s in path.read_text().splitlines() if s.strip() and not s.lstrip().startswith(('$','*','.'))]
 i=next(i for i,s in enumerate(lines) if re.match(r'^[+-]?(?:\d|\.\d)',s) or s.lower().startswith('failed'))
 names=' '.join(lines[:i]).lower().split();values=' '.join(lines[i:]).split()
 if len(names)!=len(values):raise ValueError('Malformed measurement table: '+str(path))
 return dict(zip(names,values))
def number(values,name):
 value=float(values[name]);assert math.isfinite(value),(name,value);return value

def verify(name,path=None):
 entry=CASES[name];c=json.loads((ROOT/entry['expectations']).read_text());v=measurements(path or ROOT/entry['measurements']);n=0
 for m in c['measurements']:
  if name=='native-smoke' and m['name'] not in v:continue
  x=number(v,m['name']);expect=m['expected']
  passed=(-.1<=x<=.9 and (x>=.6 if expect else x<=.2)) if m['criterion']=='logic' else (abs(x)<=1 and (x>=.05 if expect else x<=-.05))
  assert passed,(name,m['name'],x,expect);n+=1
 for i,op in enumerate(c['operations']):
  if op['kind']!='read':continue
  for bit,expect in enumerate(op['data']):
   key=f'reg{i}b{bit}'
   if name=='native-smoke' and key not in v:continue
   x=number(v,key);assert -.1<=x<=.9 and (x>=.6 if expect else x<=.2),(name,key,x);n+=1
 return n,c

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--case',choices=[k for k,v in CASES.items() if 'expectations' in v]);p.add_argument('--mt0',type=Path);a=p.parse_args()
 if a.case:
  n,_=verify(a.case,a.mt0);print(f'PASS: {a.case}, {n} checks.');return
 if a.mt0:p.error('--mt0 requires --case.')
 count=0;covered=set();coverage_count=0
 for name,entry in CASES.items():
  if 'expectations' not in entry:continue
  n,c=verify(name);count+=n
  if name.startswith('coverage-'):
   coverage_count+=n
   for op in c['operations']:covered.add((op['kind'],op['phase'],op['row'],op['group']))
 expected={(kind,phase,row,group) for kind in ['read','write'] for phase in range(2) for row in range(16) for group in range(4)}
 assert covered==expected and coverage_count==13568
 for name,entry in CASES.items():
  if not name.startswith('register-'):continue
  v=measurements(ROOT/entry['measurements']);assert 0<number(v,'tqr')<100e-12 and 0<number(v,'tqf')<100e-12
  assert number(v,'hi1')>=.6 and number(v,'hi3')>=.6 and number(v,'lo2')<=.2
 for name,group in json.loads((ROOT/'results/write_margin_results.json').read_text()).items():
  for test in group:
   key=f'margin_{name}_{round(test["floor_V"]*1000):03d}';v=measurements(ROOT/CASES[key]['measurements'])
   assert (number(v,'margin_q')<=.2 and number(v,'margin_qb')>=.6)==test['passed']
 for name,sha in json.loads((ROOT/'library/SHA256.json').read_text()).items():assert hashlib.sha256((ROOT/'library'/name).read_bytes()).hexdigest()==sha,name
 print(f'PASS: {count} recorded functional checks, including {coverage_count} all-address checks; six register schedules; write-limit outcomes; 109 native OA hashes.')
if __name__=='__main__':main()
