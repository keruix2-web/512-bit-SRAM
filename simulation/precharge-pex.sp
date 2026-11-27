* SRAM_CORE ideal-control functional verification
.option post=2 probe ingold=2 numdgt=8 measdgt=8 delmax=5.0p
.temp 25
.width out=200
.include "@MODELS@/NMOS_VTL.inc"
.include "@MODELS@/PMOS_VTL.inc"
.include "pex/SRAM_INTEGRATED.pex.sp"
.include "simulation/common/peripherals.sp"
XDUT 0 vdd in<15> in<14> in<13> in<12> in<11> in<10> in<9> in<8> in<7> in<6> in<5> in<4> in<3> in<2> in<1> in<0> col_sel_b<3> col_sel_b<2> col_sel_b<1> col_sel_b<0> col_sel<3> col_sel<2> col_sel<1> col_sel<0> pre_b dlb<7> dlb<6> dlb<5> dlb<4> dlb<3> dlb<2> dlb<1> dlb<0> dl<7> dl<6> dl<5> dl<4> dl<3> dl<2> dl<1> dl<0> SRAM_INTEGRATED
XWRITE din<0> din<1> din<2> din<3> din<4> din<5> din<6> din<7> dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> vdd 0 we web write_x8
XREAD dl<0> dl<1> dl<2> dl<3> dl<4> dl<5> dl<6> dl<7> dlb<0> dlb<1> dlb<2> dlb<3> dlb<4> dlb<5> dlb<6> dlb<7> dout<0> dout<1> dout<2> dout<3> dout<4> dout<5> dout<6> dout<7> sae vdd 0 read_x8
C_OUT0 dout<0> 0 10f
C_OUT1 dout<1> 0 10f
C_OUT2 dout<2> 0 10f
C_OUT3 dout<3> 0 10f
C_OUT4 dout<4> 0 10f
C_OUT5 dout<5> 0 10f
C_OUT6 dout<6> 0 10f
C_OUT7 dout<7> 0 10f
.ic v(xdut.n_xarray/xi15/xi5/net2_xarray/xi15/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi5/net4_xarray/xi15/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi9/net2_xarray/xi15/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi9/net4_xarray/xi15/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi13/net2_xarray/xi15/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi13/net4_xarray/xi15/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi17/net2_xarray/xi15/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi17/net4_xarray/xi15/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi21/net2_xarray/xi15/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi21/net4_xarray/xi15/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi25/net2_xarray/xi15/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi25/net4_xarray/xi15/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi29/net2_xarray/xi15/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi29/net4_xarray/xi15/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi33/net2_xarray/xi15/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi33/net4_xarray/xi15/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi6/net2_xarray/xi15/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi6/net4_xarray/xi15/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi10/net2_xarray/xi15/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi10/net4_xarray/xi15/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi14/net2_xarray/xi15/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi14/net4_xarray/xi15/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi18/net2_xarray/xi15/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi18/net4_xarray/xi15/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi22/net2_xarray/xi15/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi22/net4_xarray/xi15/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi26/net2_xarray/xi15/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi26/net4_xarray/xi15/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi30/net2_xarray/xi15/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi30/net4_xarray/xi15/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi34/net2_xarray/xi15/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi34/net4_xarray/xi15/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi7/net2_xarray/xi15/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi7/net4_xarray/xi15/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi11/net2_xarray/xi15/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi11/net4_xarray/xi15/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi15/net2_xarray/xi15/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi15/net4_xarray/xi15/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi19/net2_xarray/xi15/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi19/net4_xarray/xi15/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi23/net2_xarray/xi15/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi23/net4_xarray/xi15/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi27/net2_xarray/xi15/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi27/net4_xarray/xi15/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi31/net2_xarray/xi15/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi31/net4_xarray/xi15/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi35/net2_xarray/xi15/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi35/net4_xarray/xi15/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi8/net2_xarray/xi15/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi8/net4_xarray/xi15/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi12/net2_xarray/xi15/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi12/net4_xarray/xi15/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi16/net2_xarray/xi15/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi16/net4_xarray/xi15/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi20/net2_xarray/xi15/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi20/net4_xarray/xi15/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi24/net2_xarray/xi15/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi24/net4_xarray/xi15/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi28/net2_xarray/xi15/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi28/net4_xarray/xi15/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi32/net2_xarray/xi15/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi32/net4_xarray/xi15/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi15/xi36/net2_xarray/xi15/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi15/xi36/net4_xarray/xi15/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi5/net2_xarray/xi14/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi5/net4_xarray/xi14/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi9/net2_xarray/xi14/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi9/net4_xarray/xi14/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi13/net2_xarray/xi14/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi13/net4_xarray/xi14/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi17/net2_xarray/xi14/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi17/net4_xarray/xi14/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi21/net2_xarray/xi14/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi21/net4_xarray/xi14/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi25/net2_xarray/xi14/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi25/net4_xarray/xi14/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi29/net2_xarray/xi14/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi29/net4_xarray/xi14/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi33/net2_xarray/xi14/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi33/net4_xarray/xi14/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi6/net2_xarray/xi14/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi6/net4_xarray/xi14/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi10/net2_xarray/xi14/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi10/net4_xarray/xi14/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi14/net2_xarray/xi14/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi14/net4_xarray/xi14/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi18/net2_xarray/xi14/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi18/net4_xarray/xi14/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi22/net2_xarray/xi14/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi22/net4_xarray/xi14/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi26/net2_xarray/xi14/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi26/net4_xarray/xi14/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi30/net2_xarray/xi14/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi30/net4_xarray/xi14/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi34/net2_xarray/xi14/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi34/net4_xarray/xi14/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi7/net2_xarray/xi14/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi7/net4_xarray/xi14/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi11/net2_xarray/xi14/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi11/net4_xarray/xi14/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi15/net2_xarray/xi14/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi15/net4_xarray/xi14/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi19/net2_xarray/xi14/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi19/net4_xarray/xi14/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi23/net2_xarray/xi14/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi23/net4_xarray/xi14/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi27/net2_xarray/xi14/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi27/net4_xarray/xi14/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi31/net2_xarray/xi14/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi31/net4_xarray/xi14/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi35/net2_xarray/xi14/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi35/net4_xarray/xi14/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi8/net2_xarray/xi14/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi8/net4_xarray/xi14/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi12/net2_xarray/xi14/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi12/net4_xarray/xi14/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi16/net2_xarray/xi14/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi16/net4_xarray/xi14/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi20/net2_xarray/xi14/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi20/net4_xarray/xi14/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi24/net2_xarray/xi14/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi24/net4_xarray/xi14/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi28/net2_xarray/xi14/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi28/net4_xarray/xi14/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi32/net2_xarray/xi14/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi32/net4_xarray/xi14/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi14/xi36/net2_xarray/xi14/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi14/xi36/net4_xarray/xi14/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi5/net2_xarray/xi13/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi5/net4_xarray/xi13/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi9/net2_xarray/xi13/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi9/net4_xarray/xi13/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi13/net2_xarray/xi13/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi13/net4_xarray/xi13/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi17/net2_xarray/xi13/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi17/net4_xarray/xi13/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi21/net2_xarray/xi13/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi21/net4_xarray/xi13/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi25/net2_xarray/xi13/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi25/net4_xarray/xi13/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi29/net2_xarray/xi13/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi29/net4_xarray/xi13/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi33/net2_xarray/xi13/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi33/net4_xarray/xi13/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi6/net2_xarray/xi13/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi6/net4_xarray/xi13/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi10/net2_xarray/xi13/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi10/net4_xarray/xi13/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi14/net2_xarray/xi13/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi14/net4_xarray/xi13/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi18/net2_xarray/xi13/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi18/net4_xarray/xi13/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi22/net2_xarray/xi13/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi22/net4_xarray/xi13/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi26/net2_xarray/xi13/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi26/net4_xarray/xi13/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi30/net2_xarray/xi13/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi30/net4_xarray/xi13/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi34/net2_xarray/xi13/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi34/net4_xarray/xi13/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi7/net2_xarray/xi13/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi7/net4_xarray/xi13/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi11/net2_xarray/xi13/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi11/net4_xarray/xi13/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi15/net2_xarray/xi13/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi15/net4_xarray/xi13/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi19/net2_xarray/xi13/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi19/net4_xarray/xi13/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi23/net2_xarray/xi13/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi23/net4_xarray/xi13/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi27/net2_xarray/xi13/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi27/net4_xarray/xi13/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi31/net2_xarray/xi13/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi31/net4_xarray/xi13/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi35/net2_xarray/xi13/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi35/net4_xarray/xi13/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi8/net2_xarray/xi13/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi8/net4_xarray/xi13/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi12/net2_xarray/xi13/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi12/net4_xarray/xi13/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi16/net2_xarray/xi13/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi16/net4_xarray/xi13/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi20/net2_xarray/xi13/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi20/net4_xarray/xi13/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi24/net2_xarray/xi13/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi24/net4_xarray/xi13/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi28/net2_xarray/xi13/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi28/net4_xarray/xi13/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi32/net2_xarray/xi13/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi32/net4_xarray/xi13/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi13/xi36/net2_xarray/xi13/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi13/xi36/net4_xarray/xi13/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi5/net2_xarray/xi12/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi5/net4_xarray/xi12/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi9/net2_xarray/xi12/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi9/net4_xarray/xi12/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi13/net2_xarray/xi12/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi13/net4_xarray/xi12/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi17/net2_xarray/xi12/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi17/net4_xarray/xi12/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi21/net2_xarray/xi12/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi21/net4_xarray/xi12/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi25/net2_xarray/xi12/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi25/net4_xarray/xi12/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi29/net2_xarray/xi12/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi29/net4_xarray/xi12/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi33/net2_xarray/xi12/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi33/net4_xarray/xi12/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi6/net2_xarray/xi12/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi6/net4_xarray/xi12/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi10/net2_xarray/xi12/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi10/net4_xarray/xi12/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi14/net2_xarray/xi12/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi14/net4_xarray/xi12/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi18/net2_xarray/xi12/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi18/net4_xarray/xi12/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi22/net2_xarray/xi12/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi22/net4_xarray/xi12/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi26/net2_xarray/xi12/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi26/net4_xarray/xi12/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi30/net2_xarray/xi12/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi30/net4_xarray/xi12/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi34/net2_xarray/xi12/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi34/net4_xarray/xi12/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi7/net2_xarray/xi12/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi7/net4_xarray/xi12/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi11/net2_xarray/xi12/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi11/net4_xarray/xi12/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi15/net2_xarray/xi12/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi15/net4_xarray/xi12/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi19/net2_xarray/xi12/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi19/net4_xarray/xi12/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi23/net2_xarray/xi12/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi23/net4_xarray/xi12/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi27/net2_xarray/xi12/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi27/net4_xarray/xi12/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi31/net2_xarray/xi12/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi31/net4_xarray/xi12/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi35/net2_xarray/xi12/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi35/net4_xarray/xi12/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi8/net2_xarray/xi12/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi8/net4_xarray/xi12/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi12/net2_xarray/xi12/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi12/net4_xarray/xi12/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi16/net2_xarray/xi12/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi16/net4_xarray/xi12/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi20/net2_xarray/xi12/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi20/net4_xarray/xi12/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi24/net2_xarray/xi12/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi24/net4_xarray/xi12/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi28/net2_xarray/xi12/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi28/net4_xarray/xi12/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi32/net2_xarray/xi12/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi32/net4_xarray/xi12/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi12/xi36/net2_xarray/xi12/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi12/xi36/net4_xarray/xi12/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi5/net2_xarray/xi11/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi5/net4_xarray/xi11/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi9/net2_xarray/xi11/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi9/net4_xarray/xi11/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi13/net2_xarray/xi11/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi13/net4_xarray/xi11/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi17/net2_xarray/xi11/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi17/net4_xarray/xi11/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi21/net2_xarray/xi11/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi21/net4_xarray/xi11/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi25/net2_xarray/xi11/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi25/net4_xarray/xi11/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi29/net2_xarray/xi11/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi29/net4_xarray/xi11/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi33/net2_xarray/xi11/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi33/net4_xarray/xi11/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi6/net2_xarray/xi11/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi6/net4_xarray/xi11/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi10/net2_xarray/xi11/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi10/net4_xarray/xi11/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi14/net2_xarray/xi11/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi14/net4_xarray/xi11/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi18/net2_xarray/xi11/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi18/net4_xarray/xi11/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi22/net2_xarray/xi11/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi22/net4_xarray/xi11/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi26/net2_xarray/xi11/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi26/net4_xarray/xi11/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi30/net2_xarray/xi11/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi30/net4_xarray/xi11/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi34/net2_xarray/xi11/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi34/net4_xarray/xi11/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi7/net2_xarray/xi11/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi7/net4_xarray/xi11/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi11/net2_xarray/xi11/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi11/net4_xarray/xi11/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi15/net2_xarray/xi11/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi15/net4_xarray/xi11/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi19/net2_xarray/xi11/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi19/net4_xarray/xi11/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi23/net2_xarray/xi11/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi23/net4_xarray/xi11/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi27/net2_xarray/xi11/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi27/net4_xarray/xi11/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi31/net2_xarray/xi11/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi31/net4_xarray/xi11/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi35/net2_xarray/xi11/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi35/net4_xarray/xi11/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi8/net2_xarray/xi11/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi8/net4_xarray/xi11/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi12/net2_xarray/xi11/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi12/net4_xarray/xi11/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi16/net2_xarray/xi11/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi16/net4_xarray/xi11/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi20/net2_xarray/xi11/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi20/net4_xarray/xi11/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi24/net2_xarray/xi11/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi24/net4_xarray/xi11/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi28/net2_xarray/xi11/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi28/net4_xarray/xi11/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi32/net2_xarray/xi11/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi32/net4_xarray/xi11/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi11/xi36/net2_xarray/xi11/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi11/xi36/net4_xarray/xi11/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi5/net2_xarray/xi10/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi5/net4_xarray/xi10/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi9/net2_xarray/xi10/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi9/net4_xarray/xi10/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi13/net2_xarray/xi10/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi13/net4_xarray/xi10/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi17/net2_xarray/xi10/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi17/net4_xarray/xi10/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi21/net2_xarray/xi10/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi21/net4_xarray/xi10/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi25/net2_xarray/xi10/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi25/net4_xarray/xi10/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi29/net2_xarray/xi10/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi29/net4_xarray/xi10/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi33/net2_xarray/xi10/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi33/net4_xarray/xi10/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi6/net2_xarray/xi10/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi6/net4_xarray/xi10/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi10/net2_xarray/xi10/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi10/net4_xarray/xi10/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi14/net2_xarray/xi10/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi14/net4_xarray/xi10/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi18/net2_xarray/xi10/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi18/net4_xarray/xi10/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi22/net2_xarray/xi10/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi22/net4_xarray/xi10/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi26/net2_xarray/xi10/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi26/net4_xarray/xi10/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi30/net2_xarray/xi10/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi30/net4_xarray/xi10/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi34/net2_xarray/xi10/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi34/net4_xarray/xi10/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi7/net2_xarray/xi10/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi7/net4_xarray/xi10/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi11/net2_xarray/xi10/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi11/net4_xarray/xi10/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi15/net2_xarray/xi10/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi15/net4_xarray/xi10/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi19/net2_xarray/xi10/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi19/net4_xarray/xi10/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi23/net2_xarray/xi10/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi23/net4_xarray/xi10/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi27/net2_xarray/xi10/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi27/net4_xarray/xi10/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi31/net2_xarray/xi10/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi31/net4_xarray/xi10/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi35/net2_xarray/xi10/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi35/net4_xarray/xi10/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi8/net2_xarray/xi10/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi8/net4_xarray/xi10/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi12/net2_xarray/xi10/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi12/net4_xarray/xi10/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi16/net2_xarray/xi10/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi16/net4_xarray/xi10/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi20/net2_xarray/xi10/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi20/net4_xarray/xi10/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi24/net2_xarray/xi10/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi24/net4_xarray/xi10/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi28/net2_xarray/xi10/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi28/net4_xarray/xi10/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi32/net2_xarray/xi10/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi32/net4_xarray/xi10/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi10/xi36/net2_xarray/xi10/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi10/xi36/net4_xarray/xi10/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi5/net2_xarray/xi9/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi5/net4_xarray/xi9/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi9/net2_xarray/xi9/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi9/net4_xarray/xi9/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi13/net2_xarray/xi9/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi13/net4_xarray/xi9/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi17/net2_xarray/xi9/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi17/net4_xarray/xi9/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi21/net2_xarray/xi9/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi21/net4_xarray/xi9/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi25/net2_xarray/xi9/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi25/net4_xarray/xi9/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi29/net2_xarray/xi9/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi29/net4_xarray/xi9/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi33/net2_xarray/xi9/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi33/net4_xarray/xi9/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi6/net2_xarray/xi9/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi6/net4_xarray/xi9/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi10/net2_xarray/xi9/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi10/net4_xarray/xi9/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi14/net2_xarray/xi9/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi14/net4_xarray/xi9/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi18/net2_xarray/xi9/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi18/net4_xarray/xi9/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi22/net2_xarray/xi9/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi22/net4_xarray/xi9/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi26/net2_xarray/xi9/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi26/net4_xarray/xi9/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi30/net2_xarray/xi9/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi30/net4_xarray/xi9/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi34/net2_xarray/xi9/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi34/net4_xarray/xi9/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi7/net2_xarray/xi9/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi7/net4_xarray/xi9/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi11/net2_xarray/xi9/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi11/net4_xarray/xi9/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi15/net2_xarray/xi9/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi15/net4_xarray/xi9/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi19/net2_xarray/xi9/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi19/net4_xarray/xi9/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi23/net2_xarray/xi9/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi23/net4_xarray/xi9/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi27/net2_xarray/xi9/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi27/net4_xarray/xi9/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi31/net2_xarray/xi9/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi31/net4_xarray/xi9/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi35/net2_xarray/xi9/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi35/net4_xarray/xi9/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi8/net2_xarray/xi9/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi8/net4_xarray/xi9/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi12/net2_xarray/xi9/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi12/net4_xarray/xi9/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi16/net2_xarray/xi9/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi16/net4_xarray/xi9/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi20/net2_xarray/xi9/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi20/net4_xarray/xi9/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi24/net2_xarray/xi9/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi24/net4_xarray/xi9/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi28/net2_xarray/xi9/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi28/net4_xarray/xi9/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi32/net2_xarray/xi9/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi32/net4_xarray/xi9/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi9/xi36/net2_xarray/xi9/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi9/xi36/net4_xarray/xi9/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi5/net2_xarray/xi8/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi5/net4_xarray/xi8/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi9/net2_xarray/xi8/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi9/net4_xarray/xi8/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi13/net2_xarray/xi8/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi13/net4_xarray/xi8/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi17/net2_xarray/xi8/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi17/net4_xarray/xi8/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi21/net2_xarray/xi8/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi21/net4_xarray/xi8/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi25/net2_xarray/xi8/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi25/net4_xarray/xi8/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi29/net2_xarray/xi8/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi29/net4_xarray/xi8/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi33/net2_xarray/xi8/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi33/net4_xarray/xi8/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi6/net2_xarray/xi8/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi6/net4_xarray/xi8/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi10/net2_xarray/xi8/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi10/net4_xarray/xi8/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi14/net2_xarray/xi8/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi14/net4_xarray/xi8/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi18/net2_xarray/xi8/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi18/net4_xarray/xi8/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi22/net2_xarray/xi8/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi22/net4_xarray/xi8/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi26/net2_xarray/xi8/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi26/net4_xarray/xi8/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi30/net2_xarray/xi8/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi30/net4_xarray/xi8/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi34/net2_xarray/xi8/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi34/net4_xarray/xi8/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi7/net2_xarray/xi8/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi7/net4_xarray/xi8/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi11/net2_xarray/xi8/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi11/net4_xarray/xi8/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi15/net2_xarray/xi8/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi15/net4_xarray/xi8/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi19/net2_xarray/xi8/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi19/net4_xarray/xi8/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi23/net2_xarray/xi8/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi23/net4_xarray/xi8/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi27/net2_xarray/xi8/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi27/net4_xarray/xi8/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi31/net2_xarray/xi8/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi31/net4_xarray/xi8/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi35/net2_xarray/xi8/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi35/net4_xarray/xi8/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi8/net2_xarray/xi8/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi8/net4_xarray/xi8/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi12/net2_xarray/xi8/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi12/net4_xarray/xi8/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi16/net2_xarray/xi8/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi16/net4_xarray/xi8/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi20/net2_xarray/xi8/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi20/net4_xarray/xi8/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi24/net2_xarray/xi8/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi24/net4_xarray/xi8/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi28/net2_xarray/xi8/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi28/net4_xarray/xi8/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi32/net2_xarray/xi8/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi32/net4_xarray/xi8/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi8/xi36/net2_xarray/xi8/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi8/xi36/net4_xarray/xi8/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi5/net2_xarray/xi7/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi5/net4_xarray/xi7/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi9/net2_xarray/xi7/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi9/net4_xarray/xi7/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi13/net2_xarray/xi7/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi13/net4_xarray/xi7/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi17/net2_xarray/xi7/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi17/net4_xarray/xi7/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi21/net2_xarray/xi7/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi21/net4_xarray/xi7/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi25/net2_xarray/xi7/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi25/net4_xarray/xi7/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi29/net2_xarray/xi7/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi29/net4_xarray/xi7/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi33/net2_xarray/xi7/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi33/net4_xarray/xi7/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi6/net2_xarray/xi7/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi6/net4_xarray/xi7/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi10/net2_xarray/xi7/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi10/net4_xarray/xi7/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi14/net2_xarray/xi7/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi14/net4_xarray/xi7/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi18/net2_xarray/xi7/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi18/net4_xarray/xi7/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi22/net2_xarray/xi7/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi22/net4_xarray/xi7/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi26/net2_xarray/xi7/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi26/net4_xarray/xi7/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi30/net2_xarray/xi7/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi30/net4_xarray/xi7/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi34/net2_xarray/xi7/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi34/net4_xarray/xi7/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi7/net2_xarray/xi7/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi7/net4_xarray/xi7/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi11/net2_xarray/xi7/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi11/net4_xarray/xi7/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi15/net2_xarray/xi7/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi15/net4_xarray/xi7/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi19/net2_xarray/xi7/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi19/net4_xarray/xi7/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi23/net2_xarray/xi7/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi23/net4_xarray/xi7/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi27/net2_xarray/xi7/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi27/net4_xarray/xi7/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi31/net2_xarray/xi7/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi31/net4_xarray/xi7/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi35/net2_xarray/xi7/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi35/net4_xarray/xi7/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi8/net2_xarray/xi7/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi8/net4_xarray/xi7/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi12/net2_xarray/xi7/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi12/net4_xarray/xi7/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi16/net2_xarray/xi7/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi16/net4_xarray/xi7/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi20/net2_xarray/xi7/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi20/net4_xarray/xi7/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi24/net2_xarray/xi7/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi24/net4_xarray/xi7/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi28/net2_xarray/xi7/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi28/net4_xarray/xi7/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi32/net2_xarray/xi7/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi32/net4_xarray/xi7/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi7/xi36/net2_xarray/xi7/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi7/xi36/net4_xarray/xi7/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi5/net2_xarray/xi6/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi5/net4_xarray/xi6/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi9/net2_xarray/xi6/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi9/net4_xarray/xi6/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi13/net2_xarray/xi6/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi13/net4_xarray/xi6/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi17/net2_xarray/xi6/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi17/net4_xarray/xi6/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi21/net2_xarray/xi6/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi21/net4_xarray/xi6/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi25/net2_xarray/xi6/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi25/net4_xarray/xi6/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi29/net2_xarray/xi6/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi29/net4_xarray/xi6/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi33/net2_xarray/xi6/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi33/net4_xarray/xi6/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi6/net2_xarray/xi6/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi6/net4_xarray/xi6/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi10/net2_xarray/xi6/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi10/net4_xarray/xi6/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi14/net2_xarray/xi6/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi14/net4_xarray/xi6/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi18/net2_xarray/xi6/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi18/net4_xarray/xi6/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi22/net2_xarray/xi6/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi22/net4_xarray/xi6/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi26/net2_xarray/xi6/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi26/net4_xarray/xi6/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi30/net2_xarray/xi6/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi30/net4_xarray/xi6/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi34/net2_xarray/xi6/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi34/net4_xarray/xi6/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi7/net2_xarray/xi6/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi7/net4_xarray/xi6/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi11/net2_xarray/xi6/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi11/net4_xarray/xi6/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi15/net2_xarray/xi6/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi15/net4_xarray/xi6/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi19/net2_xarray/xi6/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi19/net4_xarray/xi6/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi23/net2_xarray/xi6/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi23/net4_xarray/xi6/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi27/net2_xarray/xi6/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi27/net4_xarray/xi6/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi31/net2_xarray/xi6/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi31/net4_xarray/xi6/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi35/net2_xarray/xi6/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi35/net4_xarray/xi6/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi8/net2_xarray/xi6/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi8/net4_xarray/xi6/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi12/net2_xarray/xi6/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi12/net4_xarray/xi6/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi16/net2_xarray/xi6/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi16/net4_xarray/xi6/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi20/net2_xarray/xi6/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi20/net4_xarray/xi6/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi24/net2_xarray/xi6/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi24/net4_xarray/xi6/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi28/net2_xarray/xi6/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi28/net4_xarray/xi6/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi32/net2_xarray/xi6/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi32/net4_xarray/xi6/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi6/xi36/net2_xarray/xi6/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi6/xi36/net4_xarray/xi6/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi5/net2_xarray/xi5/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi5/net4_xarray/xi5/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi9/net2_xarray/xi5/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi9/net4_xarray/xi5/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi13/net2_xarray/xi5/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi13/net4_xarray/xi5/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi17/net2_xarray/xi5/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi17/net4_xarray/xi5/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi21/net2_xarray/xi5/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi21/net4_xarray/xi5/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi25/net2_xarray/xi5/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi25/net4_xarray/xi5/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi29/net2_xarray/xi5/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi29/net4_xarray/xi5/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi33/net2_xarray/xi5/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi33/net4_xarray/xi5/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi6/net2_xarray/xi5/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi6/net4_xarray/xi5/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi10/net2_xarray/xi5/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi10/net4_xarray/xi5/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi14/net2_xarray/xi5/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi14/net4_xarray/xi5/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi18/net2_xarray/xi5/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi18/net4_xarray/xi5/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi22/net2_xarray/xi5/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi22/net4_xarray/xi5/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi26/net2_xarray/xi5/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi26/net4_xarray/xi5/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi30/net2_xarray/xi5/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi30/net4_xarray/xi5/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi34/net2_xarray/xi5/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi34/net4_xarray/xi5/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi7/net2_xarray/xi5/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi7/net4_xarray/xi5/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi11/net2_xarray/xi5/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi11/net4_xarray/xi5/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi15/net2_xarray/xi5/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi15/net4_xarray/xi5/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi19/net2_xarray/xi5/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi19/net4_xarray/xi5/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi23/net2_xarray/xi5/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi23/net4_xarray/xi5/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi27/net2_xarray/xi5/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi27/net4_xarray/xi5/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi31/net2_xarray/xi5/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi31/net4_xarray/xi5/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi35/net2_xarray/xi5/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi35/net4_xarray/xi5/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi8/net2_xarray/xi5/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi8/net4_xarray/xi5/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi12/net2_xarray/xi5/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi12/net4_xarray/xi5/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi16/net2_xarray/xi5/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi16/net4_xarray/xi5/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi20/net2_xarray/xi5/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi20/net4_xarray/xi5/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi24/net2_xarray/xi5/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi24/net4_xarray/xi5/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi28/net2_xarray/xi5/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi28/net4_xarray/xi5/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi32/net2_xarray/xi5/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi32/net4_xarray/xi5/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi5/xi36/net2_xarray/xi5/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi5/xi36/net4_xarray/xi5/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi5/net2_xarray/xi4/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi5/net4_xarray/xi4/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi9/net2_xarray/xi4/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi9/net4_xarray/xi4/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi13/net2_xarray/xi4/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi13/net4_xarray/xi4/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi17/net2_xarray/xi4/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi17/net4_xarray/xi4/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi21/net2_xarray/xi4/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi21/net4_xarray/xi4/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi25/net2_xarray/xi4/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi25/net4_xarray/xi4/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi29/net2_xarray/xi4/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi29/net4_xarray/xi4/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi33/net2_xarray/xi4/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi33/net4_xarray/xi4/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi6/net2_xarray/xi4/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi6/net4_xarray/xi4/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi10/net2_xarray/xi4/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi10/net4_xarray/xi4/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi14/net2_xarray/xi4/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi14/net4_xarray/xi4/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi18/net2_xarray/xi4/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi18/net4_xarray/xi4/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi22/net2_xarray/xi4/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi22/net4_xarray/xi4/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi26/net2_xarray/xi4/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi26/net4_xarray/xi4/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi30/net2_xarray/xi4/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi30/net4_xarray/xi4/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi34/net2_xarray/xi4/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi34/net4_xarray/xi4/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi7/net2_xarray/xi4/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi7/net4_xarray/xi4/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi11/net2_xarray/xi4/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi11/net4_xarray/xi4/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi15/net2_xarray/xi4/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi15/net4_xarray/xi4/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi19/net2_xarray/xi4/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi19/net4_xarray/xi4/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi23/net2_xarray/xi4/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi23/net4_xarray/xi4/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi27/net2_xarray/xi4/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi27/net4_xarray/xi4/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi31/net2_xarray/xi4/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi31/net4_xarray/xi4/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi35/net2_xarray/xi4/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi35/net4_xarray/xi4/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi8/net2_xarray/xi4/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi8/net4_xarray/xi4/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi12/net2_xarray/xi4/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi12/net4_xarray/xi4/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi16/net2_xarray/xi4/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi16/net4_xarray/xi4/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi20/net2_xarray/xi4/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi20/net4_xarray/xi4/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi24/net2_xarray/xi4/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi24/net4_xarray/xi4/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi28/net2_xarray/xi4/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi28/net4_xarray/xi4/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi32/net2_xarray/xi4/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi32/net4_xarray/xi4/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi4/xi36/net2_xarray/xi4/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi4/xi36/net4_xarray/xi4/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi5/net2_xarray/xi3/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi5/net4_xarray/xi3/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi9/net2_xarray/xi3/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi9/net4_xarray/xi3/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi13/net2_xarray/xi3/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi13/net4_xarray/xi3/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi17/net2_xarray/xi3/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi17/net4_xarray/xi3/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi21/net2_xarray/xi3/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi21/net4_xarray/xi3/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi25/net2_xarray/xi3/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi25/net4_xarray/xi3/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi29/net2_xarray/xi3/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi29/net4_xarray/xi3/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi33/net2_xarray/xi3/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi33/net4_xarray/xi3/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi6/net2_xarray/xi3/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi6/net4_xarray/xi3/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi10/net2_xarray/xi3/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi10/net4_xarray/xi3/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi14/net2_xarray/xi3/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi14/net4_xarray/xi3/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi18/net2_xarray/xi3/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi18/net4_xarray/xi3/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi22/net2_xarray/xi3/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi22/net4_xarray/xi3/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi26/net2_xarray/xi3/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi26/net4_xarray/xi3/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi30/net2_xarray/xi3/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi30/net4_xarray/xi3/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi34/net2_xarray/xi3/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi34/net4_xarray/xi3/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi7/net2_xarray/xi3/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi7/net4_xarray/xi3/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi11/net2_xarray/xi3/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi11/net4_xarray/xi3/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi15/net2_xarray/xi3/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi15/net4_xarray/xi3/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi19/net2_xarray/xi3/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi19/net4_xarray/xi3/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi23/net2_xarray/xi3/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi23/net4_xarray/xi3/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi27/net2_xarray/xi3/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi27/net4_xarray/xi3/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi31/net2_xarray/xi3/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi31/net4_xarray/xi3/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi35/net2_xarray/xi3/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi35/net4_xarray/xi3/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi8/net2_xarray/xi3/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi8/net4_xarray/xi3/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi12/net2_xarray/xi3/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi12/net4_xarray/xi3/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi16/net2_xarray/xi3/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi16/net4_xarray/xi3/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi20/net2_xarray/xi3/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi20/net4_xarray/xi3/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi24/net2_xarray/xi3/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi24/net4_xarray/xi3/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi28/net2_xarray/xi3/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi28/net4_xarray/xi3/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi32/net2_xarray/xi3/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi32/net4_xarray/xi3/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi3/xi36/net2_xarray/xi3/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi3/xi36/net4_xarray/xi3/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi5/net2_xarray/xi2/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi5/net4_xarray/xi2/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi9/net2_xarray/xi2/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi9/net4_xarray/xi2/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi13/net2_xarray/xi2/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi13/net4_xarray/xi2/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi17/net2_xarray/xi2/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi17/net4_xarray/xi2/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi21/net2_xarray/xi2/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi21/net4_xarray/xi2/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi25/net2_xarray/xi2/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi25/net4_xarray/xi2/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi29/net2_xarray/xi2/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi29/net4_xarray/xi2/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi33/net2_xarray/xi2/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi33/net4_xarray/xi2/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi6/net2_xarray/xi2/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi6/net4_xarray/xi2/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi10/net2_xarray/xi2/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi10/net4_xarray/xi2/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi14/net2_xarray/xi2/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi14/net4_xarray/xi2/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi18/net2_xarray/xi2/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi18/net4_xarray/xi2/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi22/net2_xarray/xi2/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi22/net4_xarray/xi2/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi26/net2_xarray/xi2/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi26/net4_xarray/xi2/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi30/net2_xarray/xi2/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi30/net4_xarray/xi2/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi34/net2_xarray/xi2/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi34/net4_xarray/xi2/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi7/net2_xarray/xi2/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi7/net4_xarray/xi2/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi11/net2_xarray/xi2/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi11/net4_xarray/xi2/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi15/net2_xarray/xi2/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi15/net4_xarray/xi2/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi19/net2_xarray/xi2/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi19/net4_xarray/xi2/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi23/net2_xarray/xi2/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi23/net4_xarray/xi2/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi27/net2_xarray/xi2/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi27/net4_xarray/xi2/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi31/net2_xarray/xi2/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi31/net4_xarray/xi2/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi35/net2_xarray/xi2/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi35/net4_xarray/xi2/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi8/net2_xarray/xi2/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi8/net4_xarray/xi2/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi12/net2_xarray/xi2/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi12/net4_xarray/xi2/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi16/net2_xarray/xi2/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi16/net4_xarray/xi2/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi20/net2_xarray/xi2/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi20/net4_xarray/xi2/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi24/net2_xarray/xi2/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi24/net4_xarray/xi2/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi28/net2_xarray/xi2/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi28/net4_xarray/xi2/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi32/net2_xarray/xi2/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi32/net4_xarray/xi2/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi2/xi36/net2_xarray/xi2/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi2/xi36/net4_xarray/xi2/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi5/net2_xarray/xi1/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi5/net4_xarray/xi1/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi9/net2_xarray/xi1/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi9/net4_xarray/xi1/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi13/net2_xarray/xi1/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi13/net4_xarray/xi1/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi17/net2_xarray/xi1/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi17/net4_xarray/xi1/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi21/net2_xarray/xi1/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi21/net4_xarray/xi1/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi25/net2_xarray/xi1/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi25/net4_xarray/xi1/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi29/net2_xarray/xi1/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi29/net4_xarray/xi1/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi33/net2_xarray/xi1/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi33/net4_xarray/xi1/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi6/net2_xarray/xi1/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi6/net4_xarray/xi1/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi10/net2_xarray/xi1/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi10/net4_xarray/xi1/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi14/net2_xarray/xi1/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi14/net4_xarray/xi1/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi18/net2_xarray/xi1/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi18/net4_xarray/xi1/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi22/net2_xarray/xi1/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi22/net4_xarray/xi1/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi26/net2_xarray/xi1/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi26/net4_xarray/xi1/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi30/net2_xarray/xi1/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi30/net4_xarray/xi1/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi34/net2_xarray/xi1/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi34/net4_xarray/xi1/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi7/net2_xarray/xi1/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi7/net4_xarray/xi1/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi11/net2_xarray/xi1/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi11/net4_xarray/xi1/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi15/net2_xarray/xi1/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi15/net4_xarray/xi1/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi19/net2_xarray/xi1/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi19/net4_xarray/xi1/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi23/net2_xarray/xi1/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi23/net4_xarray/xi1/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi27/net2_xarray/xi1/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi27/net4_xarray/xi1/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi31/net2_xarray/xi1/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi31/net4_xarray/xi1/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi35/net2_xarray/xi1/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi35/net4_xarray/xi1/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi8/net2_xarray/xi1/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi8/net4_xarray/xi1/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi12/net2_xarray/xi1/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi12/net4_xarray/xi1/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi16/net2_xarray/xi1/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi16/net4_xarray/xi1/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi20/net2_xarray/xi1/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi20/net4_xarray/xi1/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi24/net2_xarray/xi1/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi24/net4_xarray/xi1/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi28/net2_xarray/xi1/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi28/net4_xarray/xi1/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi32/net2_xarray/xi1/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi32/net4_xarray/xi1/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi1/xi36/net2_xarray/xi1/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi1/xi36/net4_xarray/xi1/xi36/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi5/net2_xarray/xi0/xi5/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi5/net4_xarray/xi0/xi5/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi9/net2_xarray/xi0/xi9/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi9/net4_xarray/xi0/xi9/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi13/net2_xarray/xi0/xi13/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi13/net4_xarray/xi0/xi13/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi17/net2_xarray/xi0/xi17/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi17/net4_xarray/xi0/xi17/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi21/net2_xarray/xi0/xi21/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi21/net4_xarray/xi0/xi21/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi25/net2_xarray/xi0/xi25/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi25/net4_xarray/xi0/xi25/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi29/net2_xarray/xi0/xi29/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi29/net4_xarray/xi0/xi29/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi33/net2_xarray/xi0/xi33/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi33/net4_xarray/xi0/xi33/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi6/net2_xarray/xi0/xi6/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi6/net4_xarray/xi0/xi6/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi10/net2_xarray/xi0/xi10/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi10/net4_xarray/xi0/xi10/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi14/net2_xarray/xi0/xi14/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi14/net4_xarray/xi0/xi14/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi18/net2_xarray/xi0/xi18/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi18/net4_xarray/xi0/xi18/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi22/net2_xarray/xi0/xi22/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi22/net4_xarray/xi0/xi22/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi26/net2_xarray/xi0/xi26/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi26/net4_xarray/xi0/xi26/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi30/net2_xarray/xi0/xi30/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi30/net4_xarray/xi0/xi30/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi34/net2_xarray/xi0/xi34/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi34/net4_xarray/xi0/xi34/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi7/net2_xarray/xi0/xi7/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi7/net4_xarray/xi0/xi7/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi11/net2_xarray/xi0/xi11/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi11/net4_xarray/xi0/xi11/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi15/net2_xarray/xi0/xi15/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi15/net4_xarray/xi0/xi15/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi19/net2_xarray/xi0/xi19/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi19/net4_xarray/xi0/xi19/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi23/net2_xarray/xi0/xi23/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi23/net4_xarray/xi0/xi23/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi27/net2_xarray/xi0/xi27/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi27/net4_xarray/xi0/xi27/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi31/net2_xarray/xi0/xi31/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi31/net4_xarray/xi0/xi31/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi35/net2_xarray/xi0/xi35/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi35/net4_xarray/xi0/xi35/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi8/net2_xarray/xi0/xi8/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi8/net4_xarray/xi0/xi8/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi12/net2_xarray/xi0/xi12/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi12/net4_xarray/xi0/xi12/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi16/net2_xarray/xi0/xi16/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi16/net4_xarray/xi0/xi16/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi20/net2_xarray/xi0/xi20/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi20/net4_xarray/xi0/xi20/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi24/net2_xarray/xi0/xi24/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi24/net4_xarray/xi0/xi24/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi28/net2_xarray/xi0/xi28/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi28/net4_xarray/xi0/xi28/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi32/net2_xarray/xi0/xi32/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi32/net4_xarray/xi0/xi32/mm1_g)=0.8
.ic v(xdut.n_xarray/xi0/xi36/net2_xarray/xi0/xi36/mm0_g)=0
.ic v(xdut.n_xarray/xi0/xi36/net4_xarray/xi0/xi36/mm1_g)=0.8
.tran 5p 3.9n
V_SUP VDD 0 0.8
V_pre_b pre_b 0 PWL(0n 0 2.18n 0 2.23n 0.8 2.82n 0.8 2.87n 0)
V_we we 0 PWL(0n 0 2.25n 0 2.3n 0.8 2.58n 0.8 2.63n 0)
V_web web 0 PWL(0n 0.8 2.25n 0.8 2.3n 0 2.58n 0 2.63n 0.8)
V_sae sae 0 PWL(0n 0)
































V_CLK clk 0 PULSE(0 0.8 1.975n 50p 50p 450p 1n)
.include "simulation/common/row_decoder_front.sp"




V_row_en row_en 0 PWL(0n 0 2.05n 0 2.1n 0.8 2.475n 0.8 2.525n 0)
XFRONT ra0 ra1 ra2 ra3 in<0> in<1> in<2> in<3> in<4> in<5> in<6> in<7> in<8> in<9> in<10> in<11> in<12> in<13> in<14> in<15> VDD 0 row_en ROW_DECODER_FRONT
.include "simulation/common/registers_decoder.sp"
.include "@MODELS@/NMOS_VTG.inc"
.include "@MODELS@/PMOS_VTG.inc"
V_CLKB clk_b 0 PULSE(0.8 0 1.975n 50p 50p 450p 1n)
V_aext0 aext0 0 PWL(0.000000000n 0 9.750000000n 0 9.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 25.750000000n 0.0 25.800000000n 0.8)
XA0 clk clk_b aext0 ra0 ab0 vdd 0 dff
V_aext1 aext1 0 PWL(0.000000000n 0 9.750000000n 0 9.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 25.750000000n 0.0 25.800000000n 0.8)
XA1 clk clk_b aext1 ra1 ab1 vdd 0 dff
V_aext2 aext2 0 PWL(0.000000000n 0 9.750000000n 0 9.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 25.750000000n 0.0 25.800000000n 0.8)
XA2 clk clk_b aext2 ra2 ab2 vdd 0 dff
V_aext3 aext3 0 PWL(0.000000000n 0 9.750000000n 0 9.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 25.750000000n 0.0 25.800000000n 0.8)
XA3 clk clk_b aext3 ra3 ab3 vdd 0 dff
V_aext4 aext4 0 PWL(0.000000000n 0 3.750000000n 0 3.800000000n 0.8 5.750000000n 0.8 5.800000000n 0.0 7.750000000n 0.0 7.800000000n 0.8 9.750000000n 0.8 9.800000000n 0.0 11.750000000n 0.0 11.800000000n 0.8 13.750000000n 0.8 13.800000000n 0.0 15.750000000n 0.0 15.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 19.750000000n 0.0 19.800000000n 0.8 21.750000000n 0.8 21.800000000n 0.0 23.750000000n 0.0 23.800000000n 0.8 25.750000000n 0.8 25.800000000n 0.0 27.750000000n 0.0 27.800000000n 0.8 29.750000000n 0.8 29.800000000n 0.0 31.750000000n 0.0 31.800000000n 0.8)
XA4 clk clk_b aext4 ca0 ab4 vdd 0 dff
V_aext5 aext5 0 PWL(0.000000000n 0 5.750000000n 0 5.800000000n 0.8 9.750000000n 0.8 9.800000000n 0.0 13.750000000n 0.0 13.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 21.750000000n 0.0 21.800000000n 0.8 25.750000000n 0.8 25.800000000n 0.0 29.750000000n 0.0 29.800000000n 0.8)
XA5 clk clk_b aext5 ca1 ab5 vdd 0 dff
V_dext0 dext0 0 PWL(0.000000000n 0 3.750000000n 0 3.800000000n 0.8 5.750000000n 0.8 5.800000000n 0.0 7.750000000n 0.0 7.800000000n 0.8 11.750000000n 0.8 11.800000000n 0.0 13.750000000n 0.0 13.800000000n 0.8 15.750000000n 0.8 15.800000000n 0.0 17.750000000n 0.0 17.800000000n 0.8 19.750000000n 0.8 19.800000000n 0.0 21.750000000n 0.0 21.800000000n 0.8 23.750000000n 0.8 23.800000000n 0.0 27.750000000n 0.0 27.800000000n 0.8 29.750000000n 0.8 29.800000000n 0.0 31.750000000n 0.0 31.800000000n 0.8)
XD0 clk clk_b dext0 din<0> db0 vdd 0 dff
XO0 clk clk_b dout<0> rout0 rb0 vdd 0 dff
CL0 rout0 0 10f
V_dext1 dext1 0 PWL(0.000000000n 0 1.750000000n 0 1.800000000n 0.8 3.750000000n 0.8 3.800000000n 0.0 5.750000000n 0.0 5.800000000n 0.8 7.750000000n 0.8 7.800000000n 0.0 11.750000000n 0.0 11.800000000n 0.8 13.750000000n 0.8 13.800000000n 0.0 15.750000000n 0.0 15.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 19.750000000n 0.0 19.800000000n 0.8 21.750000000n 0.8 21.800000000n 0.0 23.750000000n 0.0 23.800000000n 0.8 27.750000000n 0.8 27.800000000n 0.0 29.750000000n 0.0 29.800000000n 0.8 31.750000000n 0.8 31.800000000n 0.0)
XD1 clk clk_b dext1 din<1> db1 vdd 0 dff
XO1 clk clk_b dout<1> rout1 rb1 vdd 0 dff
CL1 rout1 0 10f
V_dext2 dext2 0 PWL(0.000000000n 0 3.750000000n 0 3.800000000n 0.8 5.750000000n 0.8 5.800000000n 0.0 7.750000000n 0.0 7.800000000n 0.8 11.750000000n 0.8 11.800000000n 0.0 13.750000000n 0.0 13.800000000n 0.8 15.750000000n 0.8 15.800000000n 0.0 17.750000000n 0.0 17.800000000n 0.8 19.750000000n 0.8 19.800000000n 0.0 21.750000000n 0.0 21.800000000n 0.8 23.750000000n 0.8 23.800000000n 0.0 27.750000000n 0.0 27.800000000n 0.8 29.750000000n 0.8 29.800000000n 0.0 31.750000000n 0.0 31.800000000n 0.8)
XD2 clk clk_b dext2 din<2> db2 vdd 0 dff
XO2 clk clk_b dout<2> rout2 rb2 vdd 0 dff
CL2 rout2 0 10f
V_dext3 dext3 0 PWL(0.000000000n 0 1.750000000n 0 1.800000000n 0.8 3.750000000n 0.8 3.800000000n 0.0 5.750000000n 0.0 5.800000000n 0.8 7.750000000n 0.8 7.800000000n 0.0 11.750000000n 0.0 11.800000000n 0.8 13.750000000n 0.8 13.800000000n 0.0 15.750000000n 0.0 15.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 19.750000000n 0.0 19.800000000n 0.8 21.750000000n 0.8 21.800000000n 0.0 23.750000000n 0.0 23.800000000n 0.8 27.750000000n 0.8 27.800000000n 0.0 29.750000000n 0.0 29.800000000n 0.8 31.750000000n 0.8 31.800000000n 0.0)
XD3 clk clk_b dext3 din<3> db3 vdd 0 dff
XO3 clk clk_b dout<3> rout3 rb3 vdd 0 dff
CL3 rout3 0 10f
V_dext4 dext4 0 PWL(0.000000000n 0 3.750000000n 0 3.800000000n 0.8 5.750000000n 0.8 5.800000000n 0.0 7.750000000n 0.0 7.800000000n 0.8 11.750000000n 0.8 11.800000000n 0.0 13.750000000n 0.0 13.800000000n 0.8 15.750000000n 0.8 15.800000000n 0.0 17.750000000n 0.0 17.800000000n 0.8 19.750000000n 0.8 19.800000000n 0.0 21.750000000n 0.0 21.800000000n 0.8 23.750000000n 0.8 23.800000000n 0.0 27.750000000n 0.0 27.800000000n 0.8 29.750000000n 0.8 29.800000000n 0.0 31.750000000n 0.0 31.800000000n 0.8)
XD4 clk clk_b dext4 din<4> db4 vdd 0 dff
XO4 clk clk_b dout<4> rout4 rb4 vdd 0 dff
CL4 rout4 0 10f
V_dext5 dext5 0 PWL(0.000000000n 0 1.750000000n 0 1.800000000n 0.8 3.750000000n 0.8 3.800000000n 0.0 5.750000000n 0.0 5.800000000n 0.8 7.750000000n 0.8 7.800000000n 0.0 11.750000000n 0.0 11.800000000n 0.8 13.750000000n 0.8 13.800000000n 0.0 15.750000000n 0.0 15.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 19.750000000n 0.0 19.800000000n 0.8 21.750000000n 0.8 21.800000000n 0.0 23.750000000n 0.0 23.800000000n 0.8 27.750000000n 0.8 27.800000000n 0.0 29.750000000n 0.0 29.800000000n 0.8 31.750000000n 0.8 31.800000000n 0.0)
XD5 clk clk_b dext5 din<5> db5 vdd 0 dff
XO5 clk clk_b dout<5> rout5 rb5 vdd 0 dff
CL5 rout5 0 10f
V_dext6 dext6 0 PWL(0.000000000n 0 3.750000000n 0 3.800000000n 0.8 5.750000000n 0.8 5.800000000n 0.0 7.750000000n 0.0 7.800000000n 0.8 11.750000000n 0.8 11.800000000n 0.0 13.750000000n 0.0 13.800000000n 0.8 15.750000000n 0.8 15.800000000n 0.0 17.750000000n 0.0 17.800000000n 0.8 19.750000000n 0.8 19.800000000n 0.0 21.750000000n 0.0 21.800000000n 0.8 23.750000000n 0.8 23.800000000n 0.0 27.750000000n 0.0 27.800000000n 0.8 29.750000000n 0.8 29.800000000n 0.0 31.750000000n 0.0 31.800000000n 0.8)
XD6 clk clk_b dext6 din<6> db6 vdd 0 dff
XO6 clk clk_b dout<6> rout6 rb6 vdd 0 dff
CL6 rout6 0 10f
V_dext7 dext7 0 PWL(0.000000000n 0 1.750000000n 0 1.800000000n 0.8 3.750000000n 0.8 3.800000000n 0.0 5.750000000n 0.0 5.800000000n 0.8 7.750000000n 0.8 7.800000000n 0.0 11.750000000n 0.0 11.800000000n 0.8 13.750000000n 0.8 13.800000000n 0.0 15.750000000n 0.0 15.800000000n 0.8 17.750000000n 0.8 17.800000000n 0.0 19.750000000n 0.0 19.800000000n 0.8 21.750000000n 0.8 21.800000000n 0.0 23.750000000n 0.0 23.800000000n 0.8 27.750000000n 0.8 27.800000000n 0.0 29.750000000n 0.0 29.800000000n 0.8 31.750000000n 0.8 31.800000000n 0.0)
XD7 clk clk_b dext7 din<7> db7 vdd 0 dff
XO7 clk clk_b dout<7> rout7 rb7 vdd 0 dff
CL7 rout7 0 10f
XCOL vdd ca0 ca1 col_sel<0> col_sel<1> col_sel<2> col_sel<3> col_sel_b<0> col_sel_b<1> col_sel_b<2> col_sel_b<3> vdd 0 dec2x4
E_TRACE_pre pre 0 pre_b 0 1
E_TRACE_wl wl 0 xdut.n_wl<0>_xarray/xi0/xi36/mm5_g 0 1
E_TRACE_sel sel 0 col_sel<0> 0 1
E_TRACE_ra ra 0 ra0 0 1
E_TRACE_ca ca 0 ca0 0 1
E_TRACE_di di 0 din<0> 0 1
E_TRACE_out out 0 dout<0> 0 1
E_TRACE_reg reg 0 rout0 0 1
E_TRACE_dl dl 0 dl<0> 0 1
E_TRACE_dlb dlb 0 dlb<0> 0 1
E_TRACE_q q 0 xdut.n_xarray/xi0/xi5/net2_xarray/xi0/xi5/mm0_g 0 1
E_TRACE_qb qb 0 xdut.n_xarray/xi0/xi5/net4_xarray/xi0/xi5/mm1_g 0 1
E_out1 out1 0 dout<1> 0 1
E_reg1 reg1 0 rout1 0 1
E_dl1 dl1 0 dl<1> 0 1
E_dlb1 dlb1 0 dlb<1> 0 1
E_out2 out2 0 dout<2> 0 1
E_reg2 reg2 0 rout2 0 1
E_dl2 dl2 0 dl<2> 0 1
E_dlb2 dlb2 0 dlb<2> 0 1
E_out3 out3 0 dout<3> 0 1
E_reg3 reg3 0 rout3 0 1
E_dl3 dl3 0 dl<3> 0 1
E_dlb3 dlb3 0 dlb<3> 0 1
E_out4 out4 0 dout<4> 0 1
E_reg4 reg4 0 rout4 0 1
E_dl4 dl4 0 dl<4> 0 1
E_dlb4 dlb4 0 dlb<4> 0 1
E_out5 out5 0 dout<5> 0 1
E_reg5 reg5 0 rout5 0 1
E_dl5 dl5 0 dl<5> 0 1
E_dlb5 dlb5 0 dlb<5> 0 1
E_out6 out6 0 dout<6> 0 1
E_reg6 reg6 0 rout6 0 1
E_dl6 dl6 0 dl<6> 0 1
E_dlb6 dlb6 0 dlb<6> 0 1
E_out7 out7 0 dout<7> 0 1
E_reg7 reg7 0 rout7 0 1
E_dl7 dl7 0 dl<7> 0 1
E_dlb7 dlb7 0 dlb<7> 0 1
E_BLX blx 0 xdut.n_bl<0>_xarray/xi0/xi5/mm5_d 0 1
E_BLBX blbx 0 xdut.n_blb<0>_xarray/xi0/xi5/mm4_s 0 1
.print tran v(pre) v(wl) v(dl) v(dlb) v(blx) v(blbx)
.option post=0
.measure tran t95_dl WHEN v(dl)=.76 RISE=1 TD=2.82n
.measure tran end_dl FIND v(dl) AT=3.85n
.measure tran t95_dlb WHEN v(dlb)=.76 RISE=1 TD=2.82n
.measure tran end_dlb FIND v(dlb) AT=3.85n
.measure tran t95_blx WHEN v(blx)=.76 RISE=1 TD=2.82n
.measure tran end_blx FIND v(blx) AT=3.85n
.measure tran t95_blbx WHEN v(blbx)=.76 RISE=1 TD=2.82n
.measure tran end_blbx FIND v(blbx) AT=3.85n
.end
