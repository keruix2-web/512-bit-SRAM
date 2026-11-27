.subckt indec4x16__inv_stage3 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm0 out in vss vss nmos_vtl w=0.6u l=50n m=1
mm1 out in vdd vdd pmos_vtl w=1.2u l=50n m=1
.ends

.subckt indec4x16__inv_stage1 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm0 out in vss vss nmos_vtl w=0.3u l=50n m=1
mm1 out in vdd vdd pmos_vtl w=0.6u l=50n m=1
.ends

.subckt indec4x16__nand2_stage4 in<0> in<1> out vdd vss
*.pininfo in<0>:i in<1>:i out:o vdd:b vss:b
mm3 net5 in<1> vss vss nmos_vtl w=0.6u l=50n m=1
mm2 out in<0> net5 vss nmos_vtl w=0.6u l=50n m=1
mm1 out in<1> vdd vdd pmos_vtl w=0.6u l=50n m=1
mm0 out in<0> vdd vdd pmos_vtl w=0.6u l=50n m=1
.ends

.subckt indec4x16__nand3_stage2 in<0> in<1> in<2> out vdd vss
*.pininfo in<0>:i in<1>:i in<2>:i out:o vdd:b vss:b
mm5 net1 in<2> vss vss nmos_vtl w=0.6u l=50n m=1
mm3 net5 in<1> net1 vss nmos_vtl w=0.6u l=50n m=1
mm2 out in<0> net5 vss nmos_vtl w=0.6u l=50n m=1
mm4 out in<2> vdd vdd pmos_vtl w=0.3u l=50n m=1
mm1 out in<1> vdd vdd pmos_vtl w=0.3u l=50n m=1
mm0 out in<0> vdd vdd pmos_vtl w=0.3u l=50n m=1
.ends

.subckt row_decoder_front in<0> in<1> in<2> in<3> out_b<0> out_b<1> out_b<2> out_b<3> out_b<4> out_b<5> out_b<6> out_b<7> out_b<8> out_b<9> out_b<10> out_b<11> out_b<12> out_b<13> out_b<14> out_b<15> vdd vss wl_en
*.pininfo in<0>:i in<1>:i in<2>:i in<3>:i wl_en:i out<0>:o out<1>:o out<2>:o 
*.pininfo out<3>:o out<4>:o out<5>:o out<6>:o out<7>:o out<8>:o out<9>:o 
*.pininfo out<10>:o out<11>:o out<12>:o out<13>:o out<14>:o out<15>:o 
*.pininfo out_b<0>:o out_b<1>:o out_b<2>:o out_b<3>:o out_b<4>:o out_b<5>:o 
*.pininfo out_b<6>:o out_b<7>:o out_b<8>:o out_b<9>:o out_b<10>:o out_b<11>:o 
*.pininfo out_b<12>:o out_b<13>:o out_b<14>:o out_b<15>:o vdd:b vss:b
xi58 net26 a1_a0_00 vdd vss indec4x16__inv_stage3
xi56 net25 a1_a0_01 vdd vss indec4x16__inv_stage3
xi16 net8 a3_a2_00 vdd vss indec4x16__inv_stage3
xi17 net7 a3_a2_01 vdd vss indec4x16__inv_stage3
xi52 net23 a1_a0_11 vdd vss indec4x16__inv_stage3
xi18 net2 a3_a2_10 vdd vss indec4x16__inv_stage3
xi19 net1 a3_a2_11 vdd vss indec4x16__inv_stage3
xi54 net24 a1_a0_10 vdd vss indec4x16__inv_stage3
xi11 in<3> net11 vdd vss indec4x16__inv_stage1
xi10 in<2> net10 vdd vss indec4x16__inv_stage1
xi60 in<1> net28 vdd vss indec4x16__inv_stage1
xi59 in<0> net22 vdd vss indec4x16__inv_stage1
xi83 a3_a2_10 a1_a0_11 out_b<11> vdd vss indec4x16__nand2_stage4
xi82 a3_a2_01 a1_a0_11 out_b<7> vdd vss indec4x16__nand2_stage4
xi81 a3_a2_00 a1_a0_11 out_b<3> vdd vss indec4x16__nand2_stage4
xi6 a3_a2_00 a1_a0_00 out_b<0> vdd vss indec4x16__nand2_stage4
xi21 a3_a2_01 a1_a0_00 out_b<4> vdd vss indec4x16__nand2_stage4
xi80 a3_a2_00 a1_a0_01 out_b<1> vdd vss indec4x16__nand2_stage4
xi29 a3_a2_10 a1_a0_00 out_b<8> vdd vss indec4x16__nand2_stage4
xi79 a3_a2_01 a1_a0_01 out_b<5> vdd vss indec4x16__nand2_stage4
xi78 a3_a2_10 a1_a0_01 out_b<9> vdd vss indec4x16__nand2_stage4
xi88 a3_a2_00 a1_a0_10 out_b<2> vdd vss indec4x16__nand2_stage4
xi25 a3_a2_11 a1_a0_00 out_b<12> vdd vss indec4x16__nand2_stage4
xi87 a3_a2_01 a1_a0_10 out_b<6> vdd vss indec4x16__nand2_stage4
xi86 a3_a2_10 a1_a0_10 out_b<10> vdd vss indec4x16__nand2_stage4
xi85 a3_a2_11 a1_a0_10 out_b<14> vdd vss indec4x16__nand2_stage4
xi77 a3_a2_11 a1_a0_01 out_b<13> vdd vss indec4x16__nand2_stage4
xi84 a3_a2_11 a1_a0_11 out_b<15> vdd vss indec4x16__nand2_stage4
xi57 net22 net28 wl_en net26 vdd vss indec4x16__nand3_stage2
xi55 in<0> net28 wl_en net25 vdd vss indec4x16__nand3_stage2
xi50 net10 net11 wl_en net8 vdd vss indec4x16__nand3_stage2
xi51 in<0> in<1> wl_en net23 vdd vss indec4x16__nand3_stage2
xi7 in<2> net11 wl_en net7 vdd vss indec4x16__nand3_stage2
xi8 net10 in<3> wl_en net2 vdd vss indec4x16__nand3_stage2
xi53 net22 in<1> wl_en net24 vdd vss indec4x16__nand3_stage2
xi9 in<2> in<3> wl_en net1 vdd vss indec4x16__nand3_stage2
.ends