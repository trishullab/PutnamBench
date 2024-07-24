Require Import Nat Ensembles Finite_sets Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_b1_solution (n: nat) := sub (mul 2 n) 3.
Theorem putnam_1992_b1
    (n : nat)
    (nge2 : ge n 2)
    (A : Ensemble R -> Ensemble R := fun E : Ensemble R => fun x : R => exists a b : R, E a /\ E b /\ a <> b /\ (a + b) / 2 = x)
    (min : nat)
    (hmineq : exists E : Ensemble R, cardinal R E n /\ cardinal R (A E) min)
    (hminlb : forall E : Ensemble R, cardinal R E n -> exists m : nat, le m min /\ cardinal R (A E) m)
    : min = putnam_1992_b1_solution n.
Proof. Admitted.
