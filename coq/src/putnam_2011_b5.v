Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2011_b5
    (a: nat -> R)
    (ha : exists (A: R), forall (n: nat), exists (L : R), is_lim_seq (fun nInc => (RInt (fun x => (sum_n_m (fun i => 1 / (1 + (x - a i) ^ 2)) 1 n) ^ 2) (-1 * INR nInc) (INR nInc))) L /\ L <= A * INR n)
    : exists (B: R), B > 0 /\ forall (n: nat), sum_n_m (fun i => (sum_n_m (fun j => 1 + (a i - a j) ^ 2)) 1 n) 1 n >= B * INR n ^ 3.
Proof. Admitted.
