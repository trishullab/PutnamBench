Require Import Factorial Reals Coquelicot.Coquelicot.
Definition putnam_1974_b5_solution := 1.
Theorem putnam_1974_b5
    (f : nat -> R -> R := fun n x => sum_n (fun i => x ^ i / INR (fact i)) (n + 1))
    : forall (n : nat), f n (INR n) > exp PI / 2.
Proof. Admitted.
