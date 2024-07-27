Require Import Nat List Factorial Ensembles Finite_sets Reals Znumtheory ZArith Coquelicot.Coquelicot.
Open Scope nat_scope.
Theorem putnam_2011_b6 
    (p: nat)
    (hp : prime (Z.of_nat p) /\ odd p = true)
    : exists (E: Ensemble nat), (forall (n: nat), E n -> lt n p) /\ cardinal nat E ((p + 1) / 2) /\
    forall (n: nat), E n -> Z.to_nat (floor (sum_n (fun k => INR (fact k * n ^ k)) (p - 1))) mod p <> 0.
Proof. Admitted.
