From mathcomp Require Import fintype seq ssrbool. Require Import Reals Coquelicot.Complex.
Open Scope C.
Theorem putnam_2020_b5
    (z1 z2 z3 z4 : C)
    (hznorm : Cmod z1 = 1%R /\ Cmod z2 = 1%R /\ Cmod z3 = 1%R /\ Cmod z4 = 1%R)
    (hzne : z1 <> RtoC 1 /\ z2 <> RtoC 1 /\ z3 <> RtoC 1 /\ z4 <> RtoC 1)
    : RtoC 3 - z1 - z2 - z3 - z4 + z1 * z2 * z3 * z4 <> RtoC 0.
Proof. Admitted.
