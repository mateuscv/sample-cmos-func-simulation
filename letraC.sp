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

Vq q 0 PULSE (0 0.9 0 0 0 1n 2n)
Vr r 0 PULSE (0 0.9 0 0 0 2n 4n)
Vs s 0 PULSE (0 0.9 0 0 0 4n 8n)
Vt t 0 PULSE (0 0.9 0 0 0 8n 16n)

* ANÁLISE TRANSIENTE

.tran 0.7p 16n
.plot
.end