Require Import Coquelicot.Hierarchy Reals.

Local Coercion INR : nat >-> R.

Theorem putnam_1965_a2
    : forall n : nat, gt n 0 -> sum_n (fun r : nat => ((n - 2 * r) * (C n r) / n) ^ 2) ((n - 1) / 2) = (C (2 * n - 2) (n - 1)) / n.
Proof. Admitted.