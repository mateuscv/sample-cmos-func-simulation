* TRABALHO DE SISTEMAS DIGITAIS - MATEUS CAPPELLARI VIEIRA - 116514

* MODELO:
.include 32nm_HP.pm

* FONTE:
Vvdd vdd gnd 0.9V

* CIRCUITO:
Mu1 nodoqr         q   vdd           vdd   PMOS L=32n W=1024n
Mu2 out            r   nodoqr        vdd   PMOS L=32n W=1024n 
Mu3 nodost         s   vdd           vdd   PMOS L=32n W=1024n
Mu4 out            t   nodost        vdd   PMOS L=32n W=1024n

Md1 nodopar1par2   q   gnd           gnd   NMOS L=32n W=512n
Md2 nodopar1par2   r   gnd           gnd   NMOS L=32n W=512n
Md3 out            s   nodopar1par2  gnd   NMOS L=32n W=512n
Md4 out            t   nodopar1par2  gnd   NMOS L=32n W=512n

Ccap out gnd 3f

* TESTE C/ TENSÕES

Vq q gnd pwl (0n 0.9 9n 0.9 9.005n 0.0 10n 0.0 10.005n 0.9 12n 0.9 12.005n 0.0 13n 0.0 13.005n 0.9 20n 0.9 20.005n 0.0 21n 0.0 21.005n 0.9 24n 0.9 24.005n 0.0) 
Vr r gnd pwl (0n 0.9 7n 0.9 7.005n 0.0 23n 0.0 23.005n 0.9 25n 0.9 25.005n 0.0 26n 0.0 26.005n 0.9 30n 0.9 30.005n 0.0 31n 0.0 31.005n 0.9 36n 0.9 36.005n 0.0 37n 0.0 37.005n 0.9)
Vs s gnd pwl (0n 0.9 1n 0.9 1.005n 0.0 2n 0.0 2.005n 0.9 4n 0.9 4.005n 0.0 8n 0.0 8.005n 0.9 14n 0.9 14.005n 0.0 15n 0.0 15.005n 0.9 17n 0.9 17.005n 0.0 22n 0.0 22.005n 0.9 28n 0.9 28.005n 0.0 29n 0.0 29.005n 0.9 33n 0.9 33.005n 0.0)
Vt t gnd pwl (0n 0.0 3n 0.0 3.005n 0.9 5n 0.9 5.005n 0.0 6n 0.0 6.005n 0.9 11n 0.9 11.005n 0.0 16n 0.0 16.005n 0.9 18n 0.9 18.005n 0.0 19n 0.0 19.005n 0.9 27n 0.9 27.005n 0.0 32n 0.0 32.005n 0.9 34n 0.9 34.005n 0.0 35n 0.0 35.005n 0.9)

* ANÁLISE TRANSIENTE

.tran 0.7p 38n

* CÁLCULOS / TEMPOS

.measure tran TPLH_s-1q-1r-0t trig v(s) val=0.45 fall=1 targ v(out) val=0.45 rise=1
.measure tran TPHL_s-1q-1r-0t trig v(s) val=0.45 rise=1 targ v(out) val=0.45 fall=1

.measure tran TPLH_t-0s-1q-1r trig v(t) val=0.45 fall=1 targ v(out) val=0.45 rise=2
.measure tran TPHL_t-0s-1q-1r trig v(t) val=0.45 rise=2 targ v(out) val=0.45 fall=2

.measure tran TPLH_q-1s-1t-0r trig v(q) val=0.45 fall=1 targ v(out) val=0.45 rise=3
.measure tran TPHL_q-1s-1t-0r trig v(q) val=0.45 rise=1 targ v(out) val=0.45 fall=3

.measure tran TPLH_q-0t-1s-0r trig v(q) val=0.45 fall=2 targ v(out) val=0.45 rise=4
.measure tran TPHL_q-0t-1s-0r trig v(q) val=0.45 rise=2 targ v(out) val=0.45 fall=4

.measure tran TPLH_s-0t-1q-0r trig v(s) val=0.45 fall=3 targ v(out) val=0.45 rise=5
.measure tran TPHL_s-0t-1q-0r trig v(s) val=0.45 rise=3 targ v(out) val=0.45 fall=5

.measure tran TPLH_t-0s-1q-0r trig v(t) val=0.45 fall=3 targ v(out) val=0.45 rise=6
.measure tran TPHL_t-0s-1q-0r trig v(t) val=0.45 rise=4 targ v(out) val=0.45 fall=6

.measure tran TPLH_q-0r-0s-1t trig v(q) val=0.45 fall=3 targ v(out) val=0.45 rise=7
.measure tran TPHL_q-0r-0s-1t trig v(q) val=0.45 rise=3 targ v(out) val=0.45 fall=7

.measure tran TPLH_r-0q-1s-1t trig v(r) val=0.45 fall=2 targ v(out) val=0.45 rise=8
.measure tran TPHL_r-01-1s-1t trig v(r) val=0.45 rise=2 targ v(out) val=0.45 fall=8

.measure tran TPLH_s-1r-0q-0t trig v(s) val=0.45 fall=5 targ v(out) val=0.45 rise=9
.measure tran TPHL_s-1r-0q-0t trig v(s) val=0.45 rise=5 targ v(out) val=0.45 fall=9

.measure tran TPLH_r-0q-1s-0t trig v(r) val=0.45 fall=3 targ v(out) val=0.45 rise=10
.measure tran TPHL_r-0q-1s-0t trig v(r) val=0.45 rise=3 targ v(out) val=0.45 fall=10

.measure tran TPLH_t-1r-0s-0q trig v(t) val=0.45 fall=5 targ v(out) val=0.45 rise=11
.measure tran TPHL_t-1r-0s-0q trig v(t) val=0.45 rise=6 targ v(out) val=0.45 fall=11

.measure tran TPLH_r-1t-0s-0q trig v(r) val=0.45 fall=4 targ v(out) val=0.45 rise=12
.measure tran TPHL_r-1t-0s-0q trig v(r) val=0.45 rise=4 targ v(out) val=0.45 fall=12

.measure tran Trise-1 trig v(out) val=0.18 rise=1 targ v(out) val=0.72 rise=1
.measure tran Tfall-1 trig v(out) val=0.72 fall=1 targ v(out) val=0.18 fall=1
.measure tran Trise-2 trig v(out) val=0.18 rise=2 targ v(out) val=0.72 rise=2
.measure tran Tfall-2 trig v(out) val=0.72 fall=2 targ v(out) val=0.18 fall=2
.measure tran Trise-3 trig v(out) val=0.18 rise=3 targ v(out) val=0.72 rise=3
.measure tran Tfall-3 trig v(out) val=0.72 fall=3 targ v(out) val=0.18 fall=3
.measure tran Trise-4 trig v(out) val=0.18 rise=4 targ v(out) val=0.72 rise=4
.measure tran Tfall-4 trig v(out) val=0.72 fall=4 targ v(out) val=0.18 fall=4
.measure tran Trise-5 trig v(out) val=0.18 rise=5 targ v(out) val=0.72 rise=5
.measure tran Tfall-5 trig v(out) val=0.72 fall=5 targ v(out) val=0.18 fall=5
.measure tran Trise-6 trig v(out) val=0.18 rise=6 targ v(out) val=0.72 rise=6
.measure tran Tfall-6 trig v(out) val=0.72 fall=6 targ v(out) val=0.18 fall=6
.measure tran Trise-7 trig v(out) val=0.18 rise=7 targ v(out) val=0.72 rise=7
.measure tran Tfall-7 trig v(out) val=0.72 fall=7 targ v(out) val=0.18 fall=7
.measure tran Trise-8 trig v(out) val=0.18 rise=8 targ v(out) val=0.72 rise=8
.measure tran Tfall-8 trig v(out) val=0.72 fall=8 targ v(out) val=0.18 fall=8
.measure tran Trise-9 trig v(out) val=0.18 rise=9 targ v(out) val=0.72 rise=9
.measure tran Tfall-9 trig v(out) val=0.72 fall=9 targ v(out) val=0.18 fall=9
.measure tran Trise-10 trig v(out) val=0.18 rise=10 targ v(out) val=0.72 rise=10
.measure tran Tfall-10 trig v(out) val=0.72 fall=10 targ v(out) val=0.18 fall=10
.measure tran Trise-11 trig v(out) val=0.18 rise=11 targ v(out) val=0.72 rise=11
.measure tran Tfall-11 trig v(out) val=0.72 fall=11 targ v(out) val=0.18 fall=11
.measure tran Trise-12 trig v(out) val=0.18 rise=12 targ v(out) val=0.72 rise=12
.measure tran Tfall-12 trig v(out) val=0.72 fall=12 targ v(out) val=0.18 fall=12

.plot
.end