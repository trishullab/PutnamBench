Require Import Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Definition putnam_2013_b2_solution := 3.
Theorem putnam_2013_b2
    (E: Ensemble (R -> R) := fun f => forall (x: R), exists (a: nat -> R) (N: nat), f x = 1 + sum_n (fun n => a n * cos (2 * PI * INR n * x)) N /\ f x >= 0 /\ 
    forall (n: nat), n mod 3 = 0%nat -> a n = 0)
    (f: R -> R)
    (m: R)
    (hm : exists (f: R -> R), E f -> f 0 = m)
    (hmub : E f -> f 0 <= m)
    : m = putnam_2013_b2_solution.
Proof. Admitted.
