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
xi19 raw_b<3> raw<3> vdd vss indec2x4__inv_stage3
xi18 raw_b<2> raw<2> vdd vss indec2x4__inv_stage3
xi17 raw_b<1> raw<1> vdd vss indec2x4__inv_stage3
xi16 raw_b<0> raw<0> vdd vss indec2x4__inv_stage3
xi9 in<0> in<1> col_en raw_b<3> vdd vss indec2x4__nand3_stage2
xi8 in_b<0> in<1> col_en raw_b<2> vdd vss indec2x4__nand3_stage2
xi7 in<0> in_b<1> col_en raw_b<1> vdd vss indec2x4__nand3_stage2
xi6 in_b<0> in_b<1> col_en raw_b<0> vdd vss indec2x4__nand3_stage2
xbufa0 raw<0> mid<0> vdd vss sram_sel_buf1
xbufb0 mid<0> out<0> vdd vss sram_sel_buf2
xbufa_b0 raw_b<0> mid_b<0> vdd vss sram_sel_buf1
xbufb_b0 mid_b<0> out_b<0> vdd vss sram_sel_buf2
xbufa1 raw<1> mid<1> vdd vss sram_sel_buf1
xbufb1 mid<1> out<1> vdd vss sram_sel_buf2
xbufa_b1 raw_b<1> mid_b<1> vdd vss sram_sel_buf1
xbufb_b1 mid_b<1> out_b<1> vdd vss sram_sel_buf2
xbufa2 raw<2> mid<2> vdd vss sram_sel_buf1
xbufb2 mid<2> out<2> vdd vss sram_sel_buf2
xbufa_b2 raw_b<2> mid_b<2> vdd vss sram_sel_buf1
xbufb_b2 mid_b<2> out_b<2> vdd vss sram_sel_buf2
xbufa3 raw<3> mid<3> vdd vss sram_sel_buf1
xbufb3 mid<3> out<3> vdd vss sram_sel_buf2
xbufa_b3 raw_b<3> mid_b<3> vdd vss sram_sel_buf1
xbufb_b3 mid_b<3> out_b<3> vdd vss sram_sel_buf2
.ends

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

.subckt indff__inv_backward in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm0 out in vss vss nmos_vtg w=100n l=50n m=1
mm1 out in vdd vdd pmos_vtg w=100n l=50n m=1
.ends

.subckt dff clk clk_b d q q_b vdd vss
*.pininfo clk:i clk_b:i d:i q:o q_b:o vdd:b vss:b
xi6 net8 q vdd vss sram_dff_output
xi2 net3 net6 vdd vss indff__inv_forward
xi9 net6 net8 clk clk_b vdd vss indff__tg_forward
xi5 d net3 clk_b clk vdd vss indff__tg_forward
xi7 net8 q_b clk_b clk vdd vss indff__tg_backward
xi4 net3 net7 clk clk_b vdd vss indff__tg_backward
xi8 q q_b vdd vss indff__inv_backward
xi3 net6 net7 vdd vss indff__inv_backward
.ends

.subckt sram_dff_output in out vdd vss
*.pininfo in:i out:o vdd:b vss:b
mm1 out in vdd vdd pmos_vtl w=2u l=50n m=1
mm0 out in vss vss nmos_vtl w=1u l=50n m=1
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