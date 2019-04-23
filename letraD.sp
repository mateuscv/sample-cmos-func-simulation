* TRABALHO DE SISTEMAS DIGITAIS - MATEUS CAPPELLARI VIEIRA - 116514

* MODELO:
.include 32nm_HP.pm

* FONTE:
Vvdd vdd gnd 0.9V

* CIRCUITO:
Mu1 nodoqr       q vdd          vdd PMOS L=32n W=100n
Mu2 out          r nodoqr       vdd PMOS L=32n W=100n 
Mu3 nodost       s vdd          vdd PMOS L=32n W=100n
Mu4 out          t nodost       vdd PMOS L=32n W=100n

Md1 nodopar1par2 q gnd          gnd NMOS L=32n W=100n
Md2 nodopar1par2 r gnd          gnd NMOS L=32n W=100n
Md3 out          s nodopar1par2 gnd NMOS L=32n W=100n
Md4 out          t nodopar1par2 gnd NMOS L=32n W=100n

* TESTE C/ TENSÕES
*bottom up
Vq q gnd pwl (0n 0.9 9n 0.9 9.005n 0.0 10n 0.0 10.005n 0.9 12n 0.9 12.005n 0.0 13n 0.0 13.005n 0.9 20n 0.9 20.005n 0.0 21n 0.0 21.005n 0.9 24n 0.9 24.005n 0.0) 
Vr r gnd pwl (0n 0.9 7n 0.9 7.005n 0.0 23n 0.0 23.005n 0.9 25n 0.9 25.005n 0.0 26n 0.0 26.005n 0.9 30n 0.9 30.005n 0.0 31n 0.0 31.005n 0.9 36n 0.9 36.005n 0.0 37n 0.0 37.005n 0.9)
Vs s gnd pwl (0n 0.9 1n 0.9 1.005n 0.0 2n 0.0 2.005n 0.9 4n 0.9 4.005n 0.0 8n 0.0 8.005n 0.9 14n 0.9 14.005n 0.0 15n 0.0 15.005n 0.9 17n 0.9 17.005n 0.0 22n 0.0 22.005n 0.9 28n 0.9 28.005n 0.0 29n 0.0 29.005n 0.9 33n 0.9 33.005n 0.0)
Vt t gnd pwl (0n 0.0 3n 0.0 3.005n 0.9 5n 0.9 5.005n 0.0 6n 0.0 6.005n 0.9 11n 0.9 11.005n 0.0 16n 0.0 16.005n 0.9 18n 0.9 18.005n 0.0 19n 0.0 19.005n 0.9 27n 0.9 27.005n 0.0 32n 0.0 32.005n 0.9 34n 0.9 34.005n 0.0 35n 0.0 35.005n 0.9)

* ANÁLISE TRANSIENTE

.tran 0.7p 38n
.plot
.end