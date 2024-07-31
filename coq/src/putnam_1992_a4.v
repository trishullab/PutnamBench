Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a4_solution (k : nat) := if odd k then 0 else pow (-1) (k/2) * INR (fact k).
Theorem putnam_1992_a4
    (f : R -> R)
    (hfdiff : forall k : nat, continuity (Derive_n f k) /\ forall x : R, ex_derive (Derive_n f k) x)
    (hf : forall n : nat, gt n 0 -> f (1 / INR n) = (INR n)^2 / ((INR n)^2 + 1))
    : forall (k : nat), gt k 0 -> (Derive_n f k) 0 = putnam_1992_a4_solution k.
Proof. Admitted.
