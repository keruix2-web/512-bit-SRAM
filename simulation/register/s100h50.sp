* Register setup/hold conservative tests, 10 fF
.option post=0 ingold=2 measdgt=8 delmax=1p
.temp 25
.include "@MODELS@/NMOS_VTL.inc"
.include "@MODELS@/PMOS_VTL.inc"
.include "@MODELS@/NMOS_VTG.inc"
.include "@MODELS@/PMOS_VTG.inc"
.include "simulation/common/registers_decoder.sp"
VDD vdd 0 .8
VCLK clk 0 PULSE(0 .8 .975n 50p 50p 450p 1n)
VCLKB clk_b 0 PULSE(.8 0 .975n 50p 50p 450p 1n)
VD d 0 PWL(0 0 0.85n 0 0.9n .8 1.05n .8 1.1n 0 2.85n 0 2.9n .8 3.05n .8 3.0999999999999996n 0)
XFF clk clk_b d q qb vdd 0 dff
CLOAD q 0 10f
.ic v(q)=0 v(qb)=.8
.measure tran tqr TRIG v(clk) VAL=.4 RISE=1 TARG v(q) VAL=.4 RISE=1
.measure tran tqf TRIG v(clk) VAL=.4 RISE=2 TARG v(q) VAL=.4 FALL=1
.measure tran hi1 FIND v(q) AT=1.15n
.measure tran lo2 FIND v(q) AT=2.15n
.measure tran hi3 FIND v(q) AT=3.15n
.tran 1p 3.5n
.end
