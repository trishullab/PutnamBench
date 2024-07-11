Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2013_a3
    (a: nat -> R)
    (x: R)
    (n: nat)
    (hx : 0 < x < 1)
    (ha : sum_n (fun i => a i / (1 - x ^ (i + 1))) (n + 1) = 0)
    : exists (y: R), 0 < y < 1 /\ sum_n (fun i => a i * y ^ i) (n + 1) = 0.
Proof. Admitted.
