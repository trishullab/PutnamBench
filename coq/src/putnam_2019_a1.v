Require Import ZArith Ensembles Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2019_a1_solution : Ensemble Z := fun n => Z.ge n 0 /\ n mod 9 <> 3 /\ n mod 9 <> 6.
Theorem putnam_2019_a1 
    (A : Ensemble Z)
    (hA : forall (n: Z), A n <-> exists (A B C: Z), A >= 0 /\ B >= 0 /\ C >= 0 /\ A ^ 3 + B ^ 3 + C ^ 3 - 3 * A * B * C = n)
    : A = putnam_2019_a1_solution.
Proof. Admitted.
