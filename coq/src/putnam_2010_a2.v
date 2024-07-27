Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_a2_solution (f: R -> R) := exists (c d: R), f = (fun x => c * x + d).
Theorem putnam_2010_a2
    (f: R -> R)
    : (forall (x: R) (n: nat), gt n 0 -> ex_derive f x /\ Derive f x = (f (x + (INR n)) - f x) / (INR n)) <-> putnam_2010_a2_solution f.
Proof. Admitted.
