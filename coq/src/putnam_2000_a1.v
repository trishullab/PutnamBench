Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2000_a1_solution (x A: R) := 0 < x < A ^ 2.
Theorem putnam_2000_a1
    (A: R)
    (hA : A > 0)
    : forall (x: nat -> R), Series x = A -> putnam_2000_a1_solution (Series (fun j => x j ^ 2)) A.
Proof. Admitted.
