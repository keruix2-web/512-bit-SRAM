#!/usr/bin/env python3
"""Draw the SRAM architecture as a monochrome block diagram."""
from pathlib import Path
import argparse
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle,Polygon

def draw_system(output):
 output=Path(output);output.mkdir(parents=True,exist_ok=True)
 fig=plt.figure(figsize=(18.16,11.88),facecolor='white')
 ax=fig.add_axes([0,0,1,1]);ax.set(xlim=(0,1816),ylim=(1188,0));ax.set_aspect('equal');ax.axis('off')
 def box(x,y,w,h,lw=3.8):ax.add_patch(Rectangle((x,y),w,h,facecolor='white',edgecolor='black',lw=lw,joinstyle='miter',zorder=2))
 def text(x,y,label,size=30,bold=False,rotation=0):ax.text(x,y,label,ha='center',va='center',fontsize=size,fontweight='bold' if bold else 'normal',rotation=rotation,color='black',linespacing=1.12,zorder=4)
 def arrow(a,b,tail=42,head=90,tip=52):
  a=np.array(a,dtype=float);b=np.array(b,dtype=float);u=(b-a)/np.linalg.norm(b-a);n=np.array([-u[1],u[0]]);neck=b-tip*u
  pts=[a+n*tail/2,neck+n*tail/2,neck+n*head/2,b,neck-n*head/2,neck-n*tail/2,a-n*tail/2]
  ax.add_patch(Polygon(pts,closed=True,facecolor='white',edgecolor='black',lw=1.5,joinstyle='miter',zorder=3))
 text(908,150,'SRAM System',78,True)
 box(45,340,95,590);text(92.5,635,'Address Registers',33,True,270)
 text(245,525,'6-bit\naddress',31);arrow((155,650),(365,650))
 box(365,340,330,690)
 box(395,370,270,280,1.4);text(530,510,'Row\ndecoders\n(4 bits)',31)
 box(395,710,270,170,1.4);text(530,795,'Column\ndecoders\n(2 bits)',28)
 text(530,953,'Address\nDecoders',32,True)
 for y in [386,418,618]:ax.plot([695,950],[y,y],c='black',lw=3.2,zorder=1)
 ax.scatter([727]*6,np.linspace(445,585,6),s=50,c='black',zorder=3)
 text(830,510,'16 rows',29)
 box(950,340,640,325);text(1270,493,'Array of Memory\nElements\n(SRAM cells)',35,True)
 text(1270,625,'16 × 32 · 512 bits',19)
 for x in [1010,1055,1485,1530]:ax.plot([x,x],[665,755],c='black',lw=3.2,zorder=1)
 ax.scatter(np.linspace(1100,1435,12),[696]*12,s=50,c='black',zorder=3)
 text(1270,731,'32 cols',29)
 box(950,755,655,92);text(1277.5,801,'Column circuits',37,True)
 arrow((710,801),(922,801))
 box(810,990,430,100);text(1025,1040,'Write Registers',33,True)
 box(1280,990,450,100);text(1505,1040,'Read Registers',33,True)
 arrow((1065,983),(1065,854),tail=40,head=88,tip=42)
 arrow((1435,854),(1435,983),tail=40,head=88,tip=42)
 text(1250,917,'8-bit data',30)
 fig.savefig(output/'overall_system_diagram.png',dpi=200,facecolor='white')
 fig.savefig(output/'overall_system_diagram.svg',facecolor='white')
 plt.close(fig)
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output-dir',type=Path,default=Path(__file__).resolve().parents[1]/'images');a=p.parse_args();draw_system(a.output_dir)
