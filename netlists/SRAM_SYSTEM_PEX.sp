* Native fixed peripherals + unchanged physical core PEX
.include "pex/SRAM_INTEGRATED.pex.sp"
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
xcore vss vdd row_b<15> row_b<14> row_b<13> row_b<12> row_b<11> row_b<10> row_b<9> row_b<8> row_b<7> row_b<6> row_b<5> row_b<4> row_b<3> row_b<2> row_b<1> row_b<0> sel_b<3> sel_b<2> sel_b<1> sel_b<0> sel<3> sel<2> sel<1> sel<0> pre_b dlb<7> dlb<6> dlb<5> dlb<4> dlb<3> dlb<2> dlb<1> dlb<0> dl<7> dl<6> dl<5> dl<4> dl<3> dl<2> dl<1> dl<0> sram_integrated
xwrite wdata<0> wdata<1> wdata<2> wdata<3> wdata<4> wdata<5> wdata<6> wdata<7>   dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3>   dlb<4> dlb<5> dlb<6> dlb<7> vdd vss we web write_x8
xread dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2>   dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> sense<0> sense<1> sense<2> sense<3>   sense<4> sense<5> sense<6> sense<7> sae vdd vss read_x8
.ends
