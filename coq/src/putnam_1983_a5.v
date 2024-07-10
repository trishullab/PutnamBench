Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_1983_a5_solution := true.
Theorem putnam_1983_a5
    : exists (a: R), forall (n: nat), gt n 0 -> even (Z.to_nat (floor (Rpower a (INR n))) - n) = putnam_1983_a5_solution.
Proof. Admitted.
