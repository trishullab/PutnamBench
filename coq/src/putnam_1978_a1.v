Require Import Nat Ensembles Finite_sets.
Theorem putnam_1978_a1
    (A : Ensemble nat := fun n => 1 <= n <= 100 /\ n mod 3 = 1)
    (B : Ensemble nat)
    (hB : cardinal nat B 20)
    (hsubB : forall n, B n -> A n) 
    (n: nat)
    : exists (b1 b2: nat), B b1 /\ B b2 /\ b1 <> b2 -> b1 + b2 = 104.
Proof. Admitted.
