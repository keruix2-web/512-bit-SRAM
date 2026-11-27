#!/usr/bin/env python3
"""Create an ignored cds.lib using your installed Cadence and FreePDK45."""
from pathlib import Path
import argparse
r=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--pdk',type=Path,required=True);p.add_argument('--cadence-root',type=Path,required=True)
p.add_argument('--output',type=Path,default=r/'cds.lib');a=p.parse_args()
setup=a.cadence_root.resolve()/'share/cdssetup/cds.lib'
if not setup.is_file():p.error('Cadence root must contain share/cdssetup/cds.lib.')
lib=a.pdk.resolve()/'ncsu_basekit/lib'
lines=[f'INCLUDE "{setup}"']
for name in ['NCSU_TechLib_FreePDK45','NCSU_Devices_FreePDK45']:
 folder=lib/name
 if not folder.is_dir():p.error(f'Missing installed PDK library: {name}')
 lines.append(f'DEFINE {name} "{folder}"')
std=a.pdk.resolve()/'osu_soc/lib/freepdk45_cells'
if std.is_dir():lines.append(f'DEFINE NCSU_StdCells "{std}"')
lines.append(f'DEFINE ece6130_library "{r}/library/ece6130_library"')
with a.output.open('x') as f:f.write('\n'.join(lines)+'\n')
print('Created',a.output)
