Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b1_solution := False.
Theorem putnam_2010_b1
    : exists (a: nat -> R), forall (m: nat), gt m 0 -> Series (fun i => (a i) ^ m) = (INR m) <-> putnam_2010_b1_solution.
Proof. Admitted.
