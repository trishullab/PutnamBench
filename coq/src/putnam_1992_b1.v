Require Import Nat Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_b1_solution (n: nat) := sub (mul 2 n) 3.
Theorem putnam_1992_b1
    (n : nat) 
    (E : Ensemble R)
    (AE_criterion : Ensemble R -> Ensemble R -> Prop := fun E AE => cardinal R E n /\ forall (m: R), AE m <-> exists (p q: R), E p /\ E q /\ m = (p + q) / 2)
    : gt n 2 -> exists (minAE: nat), 
    (forall (AE: Ensemble R) (szAE: nat), cardinal R AE szAE /\ cardinal R AE minAE -> ge szAE minAE) <->
    minAE = putnam_1992_b1_solution n.
Proof. Admitted.
