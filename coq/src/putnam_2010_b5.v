Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b5_solution := False.
Theorem putnam_2010_b5
    : exists (f: R -> R), forall (x y: R), x < y -> f x < f y /\ Derive f x = f (f x) <-> putnam_2010_b5_solution.
Proof. Admitted.
