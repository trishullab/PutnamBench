Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1962_b5
    (n : nat)
    (ng1 : gt n 1)
    : (3 * INR n + 1) / (2 * INR n + 2) < sum_n_m (fun i : nat => (INR i / INR n) ^ n) 1 n /\
    sum_n_m (fun i : nat => (INR i / INR n) ^ n) 1 n < 2.
Proof. Admitted.
