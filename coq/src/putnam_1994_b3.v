Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1994_b3_solution (k: R) := k < 1.
Theorem putnam_1994_b3
    : forall k : R, (forall f : R -> R, (forall x : R, f x > 0 /\ ex_derive f x /\ (Derive f) x > f x) -> exists N : R, forall x : R, x > N -> f x > exp (k * x)) <-> putnam_1994_b3_solution k.
Proof. Admitted.
