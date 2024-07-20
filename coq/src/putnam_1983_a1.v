Require Import Nat Ensembles Finite_sets. From mathcomp Require Import div.
Definition putnam_1983_a1_solution := 2301.
Theorem putnam_1983_a1
    (E: Ensemble nat := fun n => n %| 10^(40) = true \/ n %| 20^(30) = true)
    : cardinal nat E putnam_1983_a1_solution.
Proof. Admitted.
