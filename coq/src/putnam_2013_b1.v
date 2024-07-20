Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2013_b1_solution : R := IZR (-1).
Theorem putnam_2013_b1
    (c: nat -> Z)
    (hc1 : c 1%nat = 1)
    (hceven : forall (n : nat), ge n 0 -> c (mul 2 n) = c n)
    (hcodd : forall (n : nat), ge n 0 -> c (add (mul 2 n) 1) = (-1) ^ (Z.of_nat n) * c n)
    : sum_n_m (fun i => IZR (c i * c (add i 2))) 1 2013 = putnam_2013_b1_solution.
Proof. Admitted.
