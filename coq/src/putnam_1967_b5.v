Require Import Reals Binomial. From Coquelicot Require Import Hierarchy.
Theorem putnam_1967_b5
    (n : nat)
    (hn : (n > 0)%nat)
    : (1/2 = sum_n (fun i => C (n + i - 1)%nat i * Rpower 2 (-INR n - INR i)) (n - 1)).
Proof. Admitted.