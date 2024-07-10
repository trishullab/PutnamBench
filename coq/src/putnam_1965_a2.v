Require Import Coquelicot.Hierarchy Reals.
Theorem putnam_1965_a2
    : forall n : nat, gt n 0 -> sum_n (fun r : nat => ((INR n - 2 * INR r) * (C n r) / INR n) ^ 2) ((n - 1) / 2) = (C (2 * n - 2) (n - 1)) / INR n.
Proof. Admitted.
