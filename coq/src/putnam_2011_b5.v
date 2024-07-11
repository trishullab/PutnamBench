Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2011_b5
    (a: nat -> R)
    (ha : exists (A: R), forall (n: nat), Lim_seq (fun nInc => (RInt (fun x => (sum_n (fun i => 1 / (1 + (x - a i) ^ 2)) n)) (-1 * INR nInc) (INR nInc)) ^ 2) <= A * INR n)
    : exists (B: R), B > 0 /\ forall (n: nat), sum_n (fun i => (sum_n (fun j => 1 + (a i - a j) ^ 2)) n) n >= B * INR n ^ 3.
Proof. Admitted.
