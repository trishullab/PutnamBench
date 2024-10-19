Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_b3_solution (f : R -> R) := exists c d : R, c > 0 /\ d > 0 /\ (d = 1 -> c = 1) /\ forall x : R, x > 0 -> f x = c * Rpower x d.
Theorem putnam_2005_b3
    (f : R -> R)
    (hf : forall x : R, x > 0 -> f x > 0)
    (hf' : forall x : R, x > 0 -> ex_derive f x)
    : (exists a : R, a > 0 /\ forall x : R, x > 0 -> Derive f (a / x) = x / f x) <-> putnam_2005_b3_solution f.
Proof. Admitted.
