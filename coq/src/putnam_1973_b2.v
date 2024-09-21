Require Import Reals QArith Coquelicot.Complex. From Coqtail Require Import Cpow.
Theorem putnam_1973_b2
    (z : C)
    (hzrat : exists q1 q2 : Q, Re z = Q2R q1 /\ Im z = Q2R q2)
    (hznorm : Cmod z = 1%R)
    : forall n : nat, exists q1 q2 : Q, Cmod (Cpow z (2 * n) - 1) = Q2R q1 /\ Cmod (1 / (Cpow z (2 * n) - 1)) = Q2R q2.
Proof. Admitted.