Require Import Basics Reals Coquelicot.Coquelicot.
Definition putnam_1979_a2_solution (k : R) := k >= 0. 
Theorem putnam_1979_a2
    : forall (k: R), (exists (f: R -> R), continuity f /\ forall x, (compose f f) x = k * pow x 9)
    <-> putnam_1979_a2_solution k.
Proof. Admitted.
