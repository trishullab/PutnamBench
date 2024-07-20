Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_b3_solution (f: R -> R) := exists (c d: R), c > 0 /\ d > 0 /\ f = (fun x => c * Rpower x d).
Theorem putnam_2005_b3
    : forall (f: R -> R) (x: R), x > 0 /\ f x > 0 /\ ex_derive f x -> exists (a: R), Derive f (a / x) = x  / f x <-> putnam_2005_b3_solution f.
Proof. Admitted.
