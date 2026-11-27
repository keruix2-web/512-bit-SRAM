* Fresh native schematic export, 2026-11-26
.subckt indff__inv_forward in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=0.8u l=50n m=1
mm0 out in vss vss nmos_vtl w=0.4u l=50n m=1
.ends

.subckt indff__tg_forward a b control control_b vdd vss
*.pininfo control:i control_b:i a:b b:b vdd:b vss:b
mm1 a control b vss nmos_vtl w=0.5u l=50n m=1
mm0 a control_b b vdd pmos_vtl w=0.4u l=50n m=1
.ends

.subckt indff__tg_backward a b control control_b vdd vss
*.pininfo control:i control_b:i a:b b:b vdd:b vss:b
mm0 a control_b b vdd pmos_vtg w=100n l=50n m=1
mm1 a control b vss nmos_vtg w=100n l=50n m=1
.ends

.subckt sram_dff_output in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=2u l=50n m=1
mm0 out in vss vss nmos_vtl w=1u l=50n m=1
.ends

.subckt indff__inv_backward in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm0 out in vss vss nmos_vtg w=100n l=50n m=1
mm1 out in vdd vdd pmos_vtg w=100n l=50n m=1
.ends

.subckt dff clk clk_b d q q_b vdd vss
*.pininfo clk:i clk_b:i d:i q:o q_b:o vdd:b vss:b
xi2 net3 net6 vdd vss indff__inv_forward
xi9 net6 net8 clk clk_b vdd vss indff__tg_forward
xi5 d net3 clk_b clk vdd vss indff__tg_forward
xi7 net8 q_b clk_b clk vdd vss indff__tg_backward
xi4 net3 net7 clk clk_b vdd vss indff__tg_backward
xi6 net8 q vdd vss sram_dff_output
xi8 q q_b vdd vss indff__inv_backward
xi3 net6 net7 vdd vss indff__inv_backward
.ends

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

.subckt row_decoder_front_system in<0> in<1> in<2> in<3> out_b<0> out_b<1>   out_b<2> out_b<3> out_b<4> out_b<5> out_b<6> out_b<7> out_b<8> out_b<9>   out_b<10> out_b<11> out_b<12> out_b<13> out_b<14> out_b<15> vdd vss wl_en
*.pininfo in<0>:i in<1>:i in<2>:i in<3>:i wl_en:i out_b<0>:o out_b<1>:o 
*.pininfo out_b<2>:o out_b<3>:o out_b<4>:o out_b<5>:o out_b<6>:o out_b<7>:o 
*.pininfo out_b<8>:o out_b<9>:o out_b<10>:o out_b<11>:o out_b<12>:o 
*.pininfo out_b<13>:o out_b<14>:o out_b<15>:o vdd:b vss:b
xi54 net24 a1_a0_10 vdd vss indec4x16__inv_stage3
xi19 net1 a3_a2_11 vdd vss indec4x16__inv_stage3
xi18 net2 a3_a2_10 vdd vss indec4x16__inv_stage3
xi52 net23 a1_a0_11 vdd vss indec4x16__inv_stage3
xi17 net7 a3_a2_01 vdd vss indec4x16__inv_stage3
xi16 net8 a3_a2_00 vdd vss indec4x16__inv_stage3
xi56 net25 a1_a0_01 vdd vss indec4x16__inv_stage3
xi58 net26 a1_a0_00 vdd vss indec4x16__inv_stage3
xi59 in<0> net22 vdd vss indec4x16__inv_stage1
xi60 in<1> net28 vdd vss indec4x16__inv_stage1
xi10 in<2> net10 vdd vss indec4x16__inv_stage1
xi11 in<3> net11 vdd vss indec4x16__inv_stage1
xi84 a3_a2_11 a1_a0_11 out_b<15> vdd vss indec4x16__nand2_stage4
xi77 a3_a2_11 a1_a0_01 out_b<13> vdd vss indec4x16__nand2_stage4
xi85 a3_a2_11 a1_a0_10 out_b<14> vdd vss indec4x16__nand2_stage4
xi86 a3_a2_10 a1_a0_10 out_b<10> vdd vss indec4x16__nand2_stage4
xi87 a3_a2_01 a1_a0_10 out_b<6> vdd vss indec4x16__nand2_stage4
xi25 a3_a2_11 a1_a0_00 out_b<12> vdd vss indec4x16__nand2_stage4
xi88 a3_a2_00 a1_a0_10 out_b<2> vdd vss indec4x16__nand2_stage4
xi78 a3_a2_10 a1_a0_01 out_b<9> vdd vss indec4x16__nand2_stage4
xi79 a3_a2_01 a1_a0_01 out_b<5> vdd vss indec4x16__nand2_stage4
xi29 a3_a2_10 a1_a0_00 out_b<8> vdd vss indec4x16__nand2_stage4
xi80 a3_a2_00 a1_a0_01 out_b<1> vdd vss indec4x16__nand2_stage4
xi21 a3_a2_01 a1_a0_00 out_b<4> vdd vss indec4x16__nand2_stage4
xi6 a3_a2_00 a1_a0_00 out_b<0> vdd vss indec4x16__nand2_stage4
xi81 a3_a2_00 a1_a0_11 out_b<3> vdd vss indec4x16__nand2_stage4
xi82 a3_a2_01 a1_a0_11 out_b<7> vdd vss indec4x16__nand2_stage4
xi83 a3_a2_10 a1_a0_11 out_b<11> vdd vss indec4x16__nand2_stage4
xi9 in<2> in<3> wl_en net1 vdd vss indec4x16__nand3_stage2
xi53 net22 in<1> wl_en net24 vdd vss indec4x16__nand3_stage2
xi8 net10 in<3> wl_en net2 vdd vss indec4x16__nand3_stage2
xi7 in<2> net11 wl_en net7 vdd vss indec4x16__nand3_stage2
xi51 in<0> in<1> wl_en net23 vdd vss indec4x16__nand3_stage2
xi50 net10 net11 wl_en net8 vdd vss indec4x16__nand3_stage2
xi55 in<0> net28 wl_en net25 vdd vss indec4x16__nand3_stage2
xi57 net22 net28 wl_en net26 vdd vss indec4x16__nand3_stage2
.ends

.subckt indec2x4__inv_stage1 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=0.6u l=50n m=1
mm0 out in vss vss nmos_vtl w=0.3u l=50n m=1
.ends

.subckt indec2x4__inv_stage3 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=1.2u l=50n m=1
mm0 out in vss vss nmos_vtl w=0.6u l=50n m=1
.ends

.subckt indec2x4__nand3_stage2 in<0> in<1> in<2> out vdd vss
*.pininfo in<0>:i in<1>:i in<2>:i out:o vdd:b vss:b
mm5 net2 in<2> vss vss nmos_vtl w=0.6u l=50n m=1
mm3 net5 in<1> net2 vss nmos_vtl w=0.6u l=50n m=1
mm2 out in<0> net5 vss nmos_vtl w=0.6u l=50n m=1
mm4 out in<2> vdd vdd pmos_vtl w=0.3u l=50n m=1
mm1 out in<1> vdd vdd pmos_vtl w=0.3u l=50n m=1
mm0 out in<0> vdd vdd pmos_vtl w=0.3u l=50n m=1
.ends

.subckt dec2x4 col_en in<0> in<1> out<0> out<1> out<2> out<3> out_b<0>   out_b<1> out_b<2> out_b<3> vdd vss
*.pininfo col_en:i in<0>:i in<1>:i out<0>:o out<1>:o out<2>:o out<3>:o 
*.pininfo out_b<0>:o out_b<1>:o out_b<2>:o out_b<3>:o vdd:b vss:b
xi11 in<1> in_b<1> vdd vss indec2x4__inv_stage1
xi10 in<0> in_b<0> vdd vss indec2x4__inv_stage1
xi19 out_b<3> out<3> vdd vss indec2x4__inv_stage3
xi18 out_b<2> out<2> vdd vss indec2x4__inv_stage3
xi17 out_b<1> out<1> vdd vss indec2x4__inv_stage3
xi16 out_b<0> out<0> vdd vss indec2x4__inv_stage3
xi9 in<0> in<1> col_en out_b<3> vdd vss indec2x4__nand3_stage2
xi8 in_b<0> in<1> col_en out_b<2> vdd vss indec2x4__nand3_stage2
xi7 in<0> in_b<1> col_en out_b<1> vdd vss indec2x4__nand3_stage2
xi6 in_b<0> in_b<1> col_en out_b<0> vdd vss indec2x4__nand3_stage2
.ends

.subckt sram_sel_buf1 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=1.2u l=50n m=1
mm0 out in vss vss nmos_vtl w=0.6u l=50n m=1
.ends

.subckt sram_sel_buf2 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=6u l=50n m=1
mm0 out in vss vss nmos_vtl w=3u l=50n m=1
.ends

.subckt dec2x4_system col_en in<0> in<1> out<0> out<1> out<2> out<3> out_b<0>   out_b<1> out_b<2> out_b<3> vdd vss
*.pininfo col_en:i in<0>:i in<1>:i out<0>:o out<1>:o out<2>:o out<3>:o 
*.pininfo out_b<0>:o out_b<1>:o out_b<2>:o out_b<3>:o vdd:b vss:b
xlogic col_en in<0> in<1> raw<0> raw<1> raw<2> raw<3> raw_b<0> raw_b<1>   raw_b<2> raw_b<3> vdd vss dec2x4
xb1_b3 raw_b<3> mid_b<3> vdd vss sram_sel_buf1
xb13 raw<3> mid<3> vdd vss sram_sel_buf1
xb1_b2 raw_b<2> mid_b<2> vdd vss sram_sel_buf1
xb12 raw<2> mid<2> vdd vss sram_sel_buf1
xb1_b1 raw_b<1> mid_b<1> vdd vss sram_sel_buf1
xb11 raw<1> mid<1> vdd vss sram_sel_buf1
xb1_b0 raw_b<0> mid_b<0> vdd vss sram_sel_buf1
xb10 raw<0> mid<0> vdd vss sram_sel_buf1
xb2_b3 mid_b<3> out_b<3> vdd vss sram_sel_buf2
xb23 mid<3> out<3> vdd vss sram_sel_buf2
xb2_b2 mid_b<2> out_b<2> vdd vss sram_sel_buf2
xb22 mid<2> out<2> vdd vss sram_sel_buf2
xb2_b1 mid_b<1> out_b<1> vdd vss sram_sel_buf2
xb21 mid<1> out<1> vdd vss sram_sel_buf2
xb2_b0 mid_b<0> out_b<0> vdd vss sram_sel_buf2
xb20 mid<0> out<0> vdd vss sram_sel_buf2
.ends

.subckt sram_1x1 bl blb vdd vss wl
*.pininfo wl:i bl:b blb:b vdd:b vss:b
mm1 net2 net4 vdd vdd pmos_vtl w=90n l=50n m=1
mm0 vdd net2 net4 vdd pmos_vtl w=90n l=50n m=1
mm5 bl wl net2 vss nmos_vtl w=90n l=50n m=1
mm4 net4 wl blb vss nmos_vtl w=90n l=50n m=1
mm3 vss net2 net4 vss nmos_vtl w=90n l=50n m=1
mm2 net2 net4 vss vss nmos_vtl w=90n l=50n m=1
.ends

.subckt sram_1x32 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9>   bl<10> bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20>   bl<21> bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31>   blb<0> blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9>   blb<10> blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18>   blb<19> blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27>   blb<28> blb<29> blb<30> blb<31> vdd vss wl
*.pininfo wl:i bl<0>:b bl<1>:b bl<2>:b bl<3>:b bl<4>:b bl<5>:b bl<6>:b bl<7>:b 
*.pininfo bl<8>:b bl<9>:b bl<10>:b bl<11>:b bl<12>:b bl<13>:b bl<14>:b 
*.pininfo bl<15>:b bl<16>:b bl<17>:b bl<18>:b bl<19>:b bl<20>:b bl<21>:b 
*.pininfo bl<22>:b bl<23>:b bl<24>:b bl<25>:b bl<26>:b bl<27>:b bl<28>:b 
*.pininfo bl<29>:b bl<30>:b bl<31>:b blb<0>:b blb<1>:b blb<2>:b blb<3>:b 
*.pininfo blb<4>:b blb<5>:b blb<6>:b blb<7>:b blb<8>:b blb<9>:b blb<10>:b 
*.pininfo blb<11>:b blb<12>:b blb<13>:b blb<14>:b blb<15>:b blb<16>:b 
*.pininfo blb<17>:b blb<18>:b blb<19>:b blb<20>:b blb<21>:b blb<22>:b 
*.pininfo blb<23>:b blb<24>:b blb<25>:b blb<26>:b blb<27>:b blb<28>:b 
*.pininfo blb<29>:b blb<30>:b blb<31>:b vdd:b vss:b
xi36 bl<31> blb<31> vdd vss wl sram_1x1
xi35 bl<23> blb<23> vdd vss wl sram_1x1
xi34 bl<15> blb<15> vdd vss wl sram_1x1
xi33 bl<7> blb<7> vdd vss wl sram_1x1
xi32 bl<30> blb<30> vdd vss wl sram_1x1
xi31 bl<22> blb<22> vdd vss wl sram_1x1
xi30 bl<14> blb<14> vdd vss wl sram_1x1
xi29 bl<6> blb<6> vdd vss wl sram_1x1
xi28 bl<29> blb<29> vdd vss wl sram_1x1
xi27 bl<21> blb<21> vdd vss wl sram_1x1
xi26 bl<13> blb<13> vdd vss wl sram_1x1
xi25 bl<5> blb<5> vdd vss wl sram_1x1
xi24 bl<28> blb<28> vdd vss wl sram_1x1
xi23 bl<20> blb<20> vdd vss wl sram_1x1
xi22 bl<12> blb<12> vdd vss wl sram_1x1
xi21 bl<4> blb<4> vdd vss wl sram_1x1
xi20 bl<27> blb<27> vdd vss wl sram_1x1
xi19 bl<19> blb<19> vdd vss wl sram_1x1
xi18 bl<11> blb<11> vdd vss wl sram_1x1
xi17 bl<3> blb<3> vdd vss wl sram_1x1
xi16 bl<26> blb<26> vdd vss wl sram_1x1
xi15 bl<18> blb<18> vdd vss wl sram_1x1
xi14 bl<10> blb<10> vdd vss wl sram_1x1
xi13 bl<2> blb<2> vdd vss wl sram_1x1
xi12 bl<25> blb<25> vdd vss wl sram_1x1
xi11 bl<17> blb<17> vdd vss wl sram_1x1
xi10 bl<9> blb<9> vdd vss wl sram_1x1
xi9 bl<1> blb<1> vdd vss wl sram_1x1
xi8 bl<24> blb<24> vdd vss wl sram_1x1
xi7 bl<16> blb<16> vdd vss wl sram_1x1
xi6 bl<8> blb<8> vdd vss wl sram_1x1
xi5 bl<0> blb<0> vdd vss wl sram_1x1
.ends

.subckt sram_16x32 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9>   bl<10> bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20>   bl<21> bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31>   blb<0> blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9>   blb<10> blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18>   blb<19> blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27>   blb<28> blb<29> blb<30> blb<31> vdd vss wl<0> wl<1> wl<2> wl<3> wl<4> wl<5>   wl<6> wl<7> wl<8> wl<9> wl<10> wl<11> wl<12> wl<13> wl<14> wl<15>
*.pininfo wl<0>:i wl<1>:i wl<2>:i wl<3>:i wl<4>:i wl<5>:i wl<6>:i wl<7>:i 
*.pininfo wl<8>:i wl<9>:i wl<10>:i wl<11>:i wl<12>:i wl<13>:i wl<14>:i 
*.pininfo wl<15>:i bl<0>:b bl<1>:b bl<2>:b bl<3>:b bl<4>:b bl<5>:b bl<6>:b 
*.pininfo bl<7>:b bl<8>:b bl<9>:b bl<10>:b bl<11>:b bl<12>:b bl<13>:b bl<14>:b 
*.pininfo bl<15>:b bl<16>:b bl<17>:b bl<18>:b bl<19>:b bl<20>:b bl<21>:b 
*.pininfo bl<22>:b bl<23>:b bl<24>:b bl<25>:b bl<26>:b bl<27>:b bl<28>:b 
*.pininfo bl<29>:b bl<30>:b bl<31>:b blb<0>:b blb<1>:b blb<2>:b blb<3>:b 
*.pininfo blb<4>:b blb<5>:b blb<6>:b blb<7>:b blb<8>:b blb<9>:b blb<10>:b 
*.pininfo blb<11>:b blb<12>:b blb<13>:b blb<14>:b blb<15>:b blb<16>:b 
*.pininfo blb<17>:b blb<18>:b blb<19>:b blb<20>:b blb<21>:b blb<22>:b 
*.pininfo blb<23>:b blb<24>:b blb<25>:b blb<26>:b blb<27>:b blb<28>:b 
*.pininfo blb<29>:b blb<30>:b blb<31>:b vdd:b vss:b
xi15 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<15> sram_1x32
xi14 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<14> sram_1x32
xi13 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<13> sram_1x32
xi12 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<12> sram_1x32
xi11 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<11> sram_1x32
xi10 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<10> sram_1x32
xi9 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<9> sram_1x32
xi8 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<8> sram_1x32
xi7 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<7> sram_1x32
xi6 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<6> sram_1x32
xi5 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<5> sram_1x32
xi4 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<4> sram_1x32
xi3 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<3> sram_1x32
xi2 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<2> sram_1x32
xi1 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<1> sram_1x32
xi0 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> vdd vss wl<0> sram_1x32
.ends

.subckt precharge bl blb pre_b vdd
*.pininfo pre_b:i bl:b blb:b vdd:b
mm2 blb pre_b bl vdd pmos_vtl w=500n l=50n m=1
mm1 bl pre_b vdd vdd pmos_vtl w=500n l=50n m=1
mm0 vdd pre_b blb vdd pmos_vtl w=500n l=50n m=1
.ends

.subckt precharge_x32 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8>   bl<9> bl<10> bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19>   bl<20> bl<21> bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30>   bl<31> blb<0> blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9>   blb<10> blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18>   blb<19> blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27>   blb<28> blb<29> blb<30> blb<31> pre_b vdd
*.pininfo pre_b:i bl<0>:b bl<1>:b bl<2>:b bl<3>:b bl<4>:b bl<5>:b bl<6>:b 
*.pininfo bl<7>:b bl<8>:b bl<9>:b bl<10>:b bl<11>:b bl<12>:b bl<13>:b bl<14>:b 
*.pininfo bl<15>:b bl<16>:b bl<17>:b bl<18>:b bl<19>:b bl<20>:b bl<21>:b 
*.pininfo bl<22>:b bl<23>:b bl<24>:b bl<25>:b bl<26>:b bl<27>:b bl<28>:b 
*.pininfo bl<29>:b bl<30>:b bl<31>:b blb<0>:b blb<1>:b blb<2>:b blb<3>:b 
*.pininfo blb<4>:b blb<5>:b blb<6>:b blb<7>:b blb<8>:b blb<9>:b blb<10>:b 
*.pininfo blb<11>:b blb<12>:b blb<13>:b blb<14>:b blb<15>:b blb<16>:b 
*.pininfo blb<17>:b blb<18>:b blb<19>:b blb<20>:b blb<21>:b blb<22>:b 
*.pininfo blb<23>:b blb<24>:b blb<25>:b blb<26>:b blb<27>:b blb<28>:b 
*.pininfo blb<29>:b blb<30>:b blb<31>:b vdd:b
xi33 bl<31> blb<31> pre_b vdd precharge
xi32 bl<23> blb<23> pre_b vdd precharge
xi31 bl<30> blb<30> pre_b vdd precharge
xi30 bl<22> blb<22> pre_b vdd precharge
xi29 bl<29> blb<29> pre_b vdd precharge
xi28 bl<21> blb<21> pre_b vdd precharge
xi27 bl<28> blb<28> pre_b vdd precharge
xi26 bl<20> blb<20> pre_b vdd precharge
xi25 bl<15> blb<15> pre_b vdd precharge
xi24 bl<7> blb<7> pre_b vdd precharge
xi23 bl<14> blb<14> pre_b vdd precharge
xi22 bl<6> blb<6> pre_b vdd precharge
xi21 bl<13> blb<13> pre_b vdd precharge
xi20 bl<5> blb<5> pre_b vdd precharge
xi19 bl<12> blb<12> pre_b vdd precharge
xi18 bl<4> blb<4> pre_b vdd precharge
xi17 bl<27> blb<27> pre_b vdd precharge
xi16 bl<19> blb<19> pre_b vdd precharge
xi15 bl<26> blb<26> pre_b vdd precharge
xi14 bl<18> blb<18> pre_b vdd precharge
xi13 bl<25> blb<25> pre_b vdd precharge
xi12 bl<17> blb<17> pre_b vdd precharge
xi11 bl<24> blb<24> pre_b vdd precharge
xi10 bl<16> blb<16> pre_b vdd precharge
xi9 bl<11> blb<11> pre_b vdd precharge
xi8 bl<3> blb<3> pre_b vdd precharge
xi7 bl<10> blb<10> pre_b vdd precharge
xi6 bl<2> blb<2> pre_b vdd precharge
xi5 bl<9> blb<9> pre_b vdd precharge
xi4 bl<1> blb<1> pre_b vdd precharge
xi3 bl<8> blb<8> pre_b vdd precharge
xi0 bl<0> blb<0> pre_b vdd precharge
.ends

.subckt inmux4to1__tg en en_b in out vdd vss
*.pininfo en:i en_b:i in:b out:b vdd:b vss:b
mm0 in en out vss nmos_vtl w=400n l=50n m=1
mm1 in en_b out vdd pmos_vtl w=400n l=50n m=1
.ends

.subckt mux4to1 bl<0> bl<1> bl<2> bl<3> blb<0> blb<1> blb<2> blb<3> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl dlb vdd vss
*.pininfo col_sel<0>:i col_sel<1>:i col_sel<2>:i col_sel<3>:i col_sel_b<0>:i 
*.pininfo col_sel_b<1>:i col_sel_b<2>:i col_sel_b<3>:i bl<0>:b bl<1>:b bl<2>:b 
*.pininfo bl<3>:b blb<0>:b blb<1>:b blb<2>:b blb<3>:b dl:b dlb:b vdd:b vss:b
xi7 col_sel<3> col_sel_b<3> blb<3> dlb vdd vss inmux4to1__tg
xi6 col_sel<2> col_sel_b<2> blb<2> dlb vdd vss inmux4to1__tg
xi5 col_sel<1> col_sel_b<1> blb<1> dlb vdd vss inmux4to1__tg
xi4 col_sel<0> col_sel_b<0> blb<0> dlb vdd vss inmux4to1__tg
xi3 col_sel<3> col_sel_b<3> bl<3> dl vdd vss inmux4to1__tg
xi2 col_sel<2> col_sel_b<2> bl<2> dl vdd vss inmux4to1__tg
xi1 col_sel<1> col_sel_b<1> bl<1> dl vdd vss inmux4to1__tg
xi0 col_sel<0> col_sel_b<0> bl<0> dl vdd vss inmux4to1__tg
.ends

.subckt mux4to1_x8 bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9>   bl<10> bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20>   bl<21> bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31>   blb<0> blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9>   blb<10> blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18>   blb<19> blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27>   blb<28> blb<29> blb<30> blb<31> col_sel<0> col_sel<1> col_sel<2> col_sel<3>   col_sel_b<0> col_sel_b<1> col_sel_b<2> col_sel_b<3> dl<0> dl<1> dl<2> dl<3>   dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4> dlb<5> dlb<6>   dlb<7> vdd vss
*.pininfo col_sel<0>:i col_sel<1>:i col_sel<2>:i col_sel<3>:i col_sel_b<0>:i 
*.pininfo col_sel_b<1>:i col_sel_b<2>:i col_sel_b<3>:i bl<0>:b bl<1>:b bl<2>:b 
*.pininfo bl<3>:b bl<4>:b bl<5>:b bl<6>:b bl<7>:b bl<8>:b bl<9>:b bl<10>:b 
*.pininfo bl<11>:b bl<12>:b bl<13>:b bl<14>:b bl<15>:b bl<16>:b bl<17>:b 
*.pininfo bl<18>:b bl<19>:b bl<20>:b bl<21>:b bl<22>:b bl<23>:b bl<24>:b 
*.pininfo bl<25>:b bl<26>:b bl<27>:b bl<28>:b bl<29>:b bl<30>:b bl<31>:b 
*.pininfo blb<0>:b blb<1>:b blb<2>:b blb<3>:b blb<4>:b blb<5>:b blb<6>:b 
*.pininfo blb<7>:b blb<8>:b blb<9>:b blb<10>:b blb<11>:b blb<12>:b blb<13>:b 
*.pininfo blb<14>:b blb<15>:b blb<16>:b blb<17>:b blb<18>:b blb<19>:b 
*.pininfo blb<20>:b blb<21>:b blb<22>:b blb<23>:b blb<24>:b blb<25>:b 
*.pininfo blb<26>:b blb<27>:b blb<28>:b blb<29>:b blb<30>:b blb<31>:b dl<0>:b 
*.pininfo dl<1>:b dl<2>:b dl<3>:b dl<4>:b dl<5>:b dl<6>:b dl<7>:b dlb<0>:b 
*.pininfo dlb<1>:b dlb<2>:b dlb<3>:b dlb<4>:b dlb<5>:b dlb<6>:b dlb<7>:b vdd:b 
*.pininfo vss:b
xi7 bl<7> bl<15> bl<23> bl<31> blb<7> blb<15> blb<23> blb<31> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<7> dlb<7> vdd vss mux4to1
xi6 bl<6> bl<14> bl<22> bl<30> blb<6> blb<14> blb<22> blb<30> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<6> dlb<6> vdd vss mux4to1
xi5 bl<5> bl<13> bl<21> bl<29> blb<5> blb<13> blb<21> blb<29> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<5> dlb<5> vdd vss mux4to1
xi4 bl<4> bl<12> bl<20> bl<28> blb<4> blb<12> blb<20> blb<28> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<4> dlb<4> vdd vss mux4to1
xi3 bl<3> bl<11> bl<19> bl<27> blb<3> blb<11> blb<19> blb<27> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<3> dlb<3> vdd vss mux4to1
xi2 bl<2> bl<10> bl<18> bl<26> blb<2> blb<10> blb<18> blb<26> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<2> dlb<2> vdd vss mux4to1
xi1 bl<1> bl<9> bl<17> bl<25> blb<1> blb<9> blb<17> blb<25> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<1> dlb<1> vdd vss mux4to1
xi0 bl<0> bl<8> bl<16> bl<24> blb<0> blb<8> blb<16> blb<24> col_sel<0>   col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2>   col_sel_b<3> dl<0> dlb<0> vdd vss mux4to1
.ends

.subckt wl_driver_ms3 in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=1.7u l=50n m=1
mm0 out in vss vss nmos_vtl w=400n l=50n m=1
.ends

.subckt sram_integrated col_sel<0> col_sel<1> col_sel<2> col_sel<3>   col_sel_b<0> col_sel_b<1> col_sel_b<2> col_sel_b<3> dl<0> dl<1> dl<2> dl<3>   dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4> dlb<5> dlb<6>   dlb<7> in<0> in<1> in<2> in<3> in<4> in<5> in<6> in<7> in<8> in<9> in<10>   in<11> in<12> in<13> in<14> in<15> pre_b vdd vss
*.pininfo col_sel<0>:i col_sel<1>:i col_sel<2>:i col_sel<3>:i col_sel_b<0>:i 
*.pininfo col_sel_b<1>:i col_sel_b<2>:i col_sel_b<3>:i in<0>:i in<1>:i in<2>:i 
*.pininfo in<3>:i in<4>:i in<5>:i in<6>:i in<7>:i in<8>:i in<9>:i in<10>:i 
*.pininfo in<11>:i in<12>:i in<13>:i in<14>:i in<15>:i pre_b:i dl<0>:b dl<1>:b 
*.pininfo dl<2>:b dl<3>:b dl<4>:b dl<5>:b dl<6>:b dl<7>:b dlb<0>:b dlb<1>:b 
*.pininfo dlb<2>:b dlb<3>:b dlb<4>:b dlb<5>:b dlb<6>:b dlb<7>:b vdd:b vss:b
xarray bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10>   bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21>   bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0>   blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10>   blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19>   blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28>   blb<29> blb<30> blb<31> vdd vss wl<0> wl<1> wl<2> wl<3> wl<4> wl<5> wl<6>   wl<7> wl<8> wl<9> wl<10> wl<11> wl<12> wl<13> wl<14> wl<15> sram_16x32
xprecharge bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10>   bl<11> bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21>   bl<22> bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0>   blb<1> blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10>   blb<11> blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19>   blb<20> blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28>   blb<29> blb<30> blb<31> pre_b vdd precharge_x32
xmux bl<0> bl<1> bl<2> bl<3> bl<4> bl<5> bl<6> bl<7> bl<8> bl<9> bl<10> bl<11>   bl<12> bl<13> bl<14> bl<15> bl<16> bl<17> bl<18> bl<19> bl<20> bl<21> bl<22>   bl<23> bl<24> bl<25> bl<26> bl<27> bl<28> bl<29> bl<30> bl<31> blb<0> blb<1>   blb<2> blb<3> blb<4> blb<5> blb<6> blb<7> blb<8> blb<9> blb<10> blb<11>   blb<12> blb<13> blb<14> blb<15> blb<16> blb<17> blb<18> blb<19> blb<20>   blb<21> blb<22> blb<23> blb<24> blb<25> blb<26> blb<27> blb<28> blb<29>   blb<30> blb<31> col_sel<0> col_sel<1> col_sel<2> col_sel<3> col_sel_b<0>   col_sel_b<1> col_sel_b<2> col_sel_b<3> dl<0> dl<1> dl<2> dl<3> dl<4> dl<5>   dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> vdd vss   mux4to1_x8
xd15 in<15> wl<15> vdd vss wl_driver_ms3
xd14 in<14> wl<14> vdd vss wl_driver_ms3
xd13 in<13> wl<13> vdd vss wl_driver_ms3
xd12 in<12> wl<12> vdd vss wl_driver_ms3
xd11 in<11> wl<11> vdd vss wl_driver_ms3
xd10 in<10> wl<10> vdd vss wl_driver_ms3
xd9 in<9> wl<9> vdd vss wl_driver_ms3
xd8 in<8> wl<8> vdd vss wl_driver_ms3
xd7 in<7> wl<7> vdd vss wl_driver_ms3
xd6 in<6> wl<6> vdd vss wl_driver_ms3
xd5 in<5> wl<5> vdd vss wl_driver_ms3
xd4 in<4> wl<4> vdd vss wl_driver_ms3
xd3 in<3> wl<3> vdd vss wl_driver_ms3
xd2 in<2> wl<2> vdd vss wl_driver_ms3
xd1 in<1> wl<1> vdd vss wl_driver_ms3
xd0 in<0> wl<0> vdd vss wl_driver_ms3
.ends

.subckt write din dl dlb vdd vss we web
*.pininfo din:i we:i web:i dl:b dlb:b vdd:b vss:b
mm4 dlb web dinb vdd pmos_vtl w=400n l=50n m=1
mm1 dinb din vdd vdd pmos_vtl w=400n l=50n m=1
mm5 dl web din vdd pmos_vtl w=400n l=50n m=1
mm6 dl we din vss nmos_vtl w=400n l=50n m=1
mm3 dlb we dinb vss nmos_vtl w=400n l=50n m=1
mm0 dinb din vss vss nmos_vtl w=400n l=50n m=1
.ends

.subckt write_x8 din<0> din<1> din<2> din<3> din<4> din<5> din<6> din<7> dl<0>   dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4>   dlb<5> dlb<6> dlb<7> vdd vss we web
*.pininfo din<0>:i din<1>:i din<2>:i din<3>:i din<4>:i din<5>:i din<6>:i 
*.pininfo din<7>:i we:i web:i dl<0>:b dl<1>:b dl<2>:b dl<3>:b dl<4>:b dl<5>:b 
*.pininfo dl<6>:b dl<7>:b dlb<0>:b dlb<1>:b dlb<2>:b dlb<3>:b dlb<4>:b 
*.pininfo dlb<5>:b dlb<6>:b dlb<7>:b vdd:b vss:b
xi15 din<0> dl<0> dlb<0> vdd vss we web write
xi14 din<1> dl<1> dlb<1> vdd vss we web write
xi13 din<2> dl<2> dlb<2> vdd vss we web write
xi12 din<3> dl<3> dlb<3> vdd vss we web write
xi11 din<4> dl<4> dlb<4> vdd vss we web write
xi10 din<5> dl<5> dlb<5> vdd vss we web write
xi9 din<6> dl<6> dlb<6> vdd vss we web write
xi8 din<7> dl<7> dlb<7> vdd vss we web write
.ends

.subckt inread__sa dl dlb o1 o2 sae vdd vss
*.pininfo dl:i dlb:i sae:i o1:o o2:o vdd:b vss:b
mm3 vdd sae o2 vdd pmos_vtl w=100n l=50n m=1
mm2 o2 o1 vdd vdd pmos_vtl w=100n l=50n m=1
mm1 vdd o2 o1 vdd pmos_vtl w=100n l=50n m=1
mm0 o1 sae vdd vdd pmos_vtl w=100n l=50n m=1
mm8 net5 sae vss vss nmos_vtl w=100n l=50n m=1
mm7 net15 dl net5 vss nmos_vtl w=100n l=50n m=1
mm6 net5 dlb net3 vss nmos_vtl w=100n l=50n m=1
mm5 net15 o2 o1 vss nmos_vtl w=100n l=50n m=1
mm4 o2 o1 net3 vss nmos_vtl w=100n l=50n m=1
.ends

.subckt inread__nand2 in0 in1 out vdd vss
*.pininfo in0:i in1:i out:o vdd:b vss:b
mm1 out in0 net4 vss nmos_vtl w=300n l=50n m=1
mm0 net4 in1 vss vss nmos_vtl w=300n l=50n m=1
mm3 out in1 vdd vdd pmos_vtl w=300n l=50n m=1
mm2 out in0 vdd vdd pmos_vtl w=300n l=50n m=1
.ends

.subckt read dl dlb dout sae vdd vss
*.pininfo dl:i dlb:i sae:i dout:o vdd:b vss:b
xi0 dl dlb net6 net7 sae vdd vss inread__sa
xi2 net7 dout doutb vdd vss inread__nand2
xi1 net6 doutb dout vdd vss inread__nand2
.ends

.subckt read_x8 dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1>   dlb<2> dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> dout<0> dout<1> dout<2> dout<3>   dout<4> dout<5> dout<6> dout<7> sae vdd vss
*.pininfo sae:i dout<0>:o dout<1>:o dout<2>:o dout<3>:o dout<4>:o dout<5>:o 
*.pininfo dout<6>:o dout<7>:o dl<0>:b dl<1>:b dl<2>:b dl<3>:b dl<4>:b dl<5>:b 
*.pininfo dl<6>:b dl<7>:b dlb<0>:b dlb<1>:b dlb<2>:b dlb<3>:b dlb<4>:b 
*.pininfo dlb<5>:b dlb<6>:b dlb<7>:b vdd:b vss:b
xi15 dl<0> dlb<0> dout<0> sae vdd vss read
xi14 dl<1> dlb<1> dout<1> sae vdd vss read
xi13 dl<2> dlb<2> dout<2> sae vdd vss read
xi12 dl<3> dlb<3> dout<3> sae vdd vss read
xi11 dl<4> dlb<4> dout<4> sae vdd vss read
xi10 dl<5> dlb<5> dout<5> sae vdd vss read
xi9 dl<6> dlb<6> dout<6> sae vdd vss read
xi8 dl<7> dlb<7> dout<7> sae vdd vss read
.ends

.subckt sram_system addr<0> addr<1> addr<2> addr<3> addr<4> addr<5> clk clk_b   col_en din<0> din<1> din<2> din<3> din<4> din<5> din<6> din<7> dout<0>   dout<1> dout<2> dout<3> dout<4> dout<5> dout<6> dout<7> pre_b sae vdd vss we   web wl_en
*.pininfo addr<0>:i addr<1>:i addr<2>:i addr<3>:i addr<4>:i addr<5>:i clk:i 
*.pininfo clk_b:i col_en:i din<0>:i din<1>:i din<2>:i din<3>:i din<4>:i 
*.pininfo din<5>:i din<6>:i din<7>:i pre_b:i sae:i we:i web:i wl_en:i 
*.pininfo dout<0>:o dout<1>:o dout<2>:o dout<3>:o dout<4>:o dout<5>:o 
*.pininfo dout<6>:o dout<7>:o vdd:b vss:b
xresult7 clk clk_b sense<7> dout<7> dout_b<7> vdd vss dff
xdata7 clk clk_b din<7> wdata<7> wdata_b<7> vdd vss dff
xresult6 clk clk_b sense<6> dout<6> dout_b<6> vdd vss dff
xdata6 clk clk_b din<6> wdata<6> wdata_b<6> vdd vss dff
xresult5 clk clk_b sense<5> dout<5> dout_b<5> vdd vss dff
xdata5 clk clk_b din<5> wdata<5> wdata_b<5> vdd vss dff
xresult4 clk clk_b sense<4> dout<4> dout_b<4> vdd vss dff
xdata4 clk clk_b din<4> wdata<4> wdata_b<4> vdd vss dff
xresult3 clk clk_b sense<3> dout<3> dout_b<3> vdd vss dff
xdata3 clk clk_b din<3> wdata<3> wdata_b<3> vdd vss dff
xresult2 clk clk_b sense<2> dout<2> dout_b<2> vdd vss dff
xdata2 clk clk_b din<2> wdata<2> wdata_b<2> vdd vss dff
xresult1 clk clk_b sense<1> dout<1> dout_b<1> vdd vss dff
xdata1 clk clk_b din<1> wdata<1> wdata_b<1> vdd vss dff
xresult0 clk clk_b sense<0> dout<0> dout_b<0> vdd vss dff
xdata0 clk clk_b din<0> wdata<0> wdata_b<0> vdd vss dff
xaddr5 clk clk_b addr<5> raddr<5> raddr_b<5> vdd vss dff
xaddr4 clk clk_b addr<4> raddr<4> raddr_b<4> vdd vss dff
xaddr3 clk clk_b addr<3> raddr<3> raddr_b<3> vdd vss dff
xaddr2 clk clk_b addr<2> raddr<2> raddr_b<2> vdd vss dff
xaddr1 clk clk_b addr<1> raddr<1> raddr_b<1> vdd vss dff
xaddr0 clk clk_b addr<0> raddr<0> raddr_b<0> vdd vss dff
xrow raddr<0> raddr<1> raddr<2> raddr<3> row_b<0> row_b<1> row_b<2> row_b<3>   row_b<4> row_b<5> row_b<6> row_b<7> row_b<8> row_b<9> row_b<10> row_b<11>   row_b<12> row_b<13> row_b<14> row_b<15> vdd vss wl_en   row_decoder_front_system
xcolumn col_en raddr<4> raddr<5> sel<0> sel<1> sel<2> sel<3> sel_b<0> sel_b<1>   sel_b<2> sel_b<3> vdd vss dec2x4_system
xcore sel<0> sel<1> sel<2> sel<3> sel_b<0> sel_b<1> sel_b<2> sel_b<3> dl<0>   dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4>   dlb<5> dlb<6> dlb<7> row_b<0> row_b<1> row_b<2> row_b<3> row_b<4> row_b<5>   row_b<6> row_b<7> row_b<8> row_b<9> row_b<10> row_b<11> row_b<12> row_b<13>   row_b<14> row_b<15> pre_b vdd vss sram_integrated
xwrite wdata<0> wdata<1> wdata<2> wdata<3> wdata<4> wdata<5> wdata<6> wdata<7>   dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3>   dlb<4> dlb<5> dlb<6> dlb<7> vdd vss we web write_x8
xread dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2>   dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> sense<0> sense<1> sense<2> sense<3>   sense<4> sense<5> sense<6> sense<7> sae vdd vss read_x8
.ends
