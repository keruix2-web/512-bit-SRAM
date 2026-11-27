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
