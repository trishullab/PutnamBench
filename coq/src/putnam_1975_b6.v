Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1975_b6
    (h : nat -> R := fun n => sum_n (fun r => 1 / (INR r + 1)) n)
    : forall (n: nat), gt n 2 -> INR n * INR (n + 1) ^ (1 / n) < h n < INR n - INR (n - 1) * Rpower (INR n) (-R1 / INR (n - 1)) .
Proof. Admitted.
