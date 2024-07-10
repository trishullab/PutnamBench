Require Import Nat Ensembles. From mathcomp Require Import div seq ssrnat ssrbool.
Definition solution_01 := fun n => n = 2^2 \/ n = 2^4 \/ n = 2^8 \/ n = 2^(16).
Theorem putnam_2018_b3
    (E : Ensemble nat := fun n => n > 0 -> (n < 10^(100)) /\ (n %| 2^n) /\ ((n-1) %| (2^n-1)) /\ ((n-2) %| (2^n-2)))
    : E = solution_01.
Proof. Admitted.
