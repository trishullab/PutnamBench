Require Import Nat Ensembles. From mathcomp Require Import div seq ssrnat ssrbool.
Definition putnam_2018_b3_solution := fun n => n = 2^2 \/ n = 2^4 \/ n = 2^16 \/ n = 2^(256).
Theorem putnam_2018_b3
    (E : Ensemble nat := fun n => n > 0 /\ (n < 10^(100)) /\ (n %| 2^n) /\ ((n-1) %| (2^n-1)) /\ ((n-2) %| (2^n-2)))
    : E = putnam_2018_b3_solution.
Proof. Admitted.
