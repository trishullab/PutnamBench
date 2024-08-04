Require Import Nat Reals QArith Coquelicot.Coquelicot.
Theorem putnam_2004_b1
    (c : nat -> Z)
    (n : nat)
    (r : Q)
    (Preq0 : sum_n (fun i => IZR (c i) * (Q2R r) ^ i) n = 0)
    : forall i : nat, lt i n -> exists m : Z, IZR m = sum_n (fun j => IZR (c (sub n j)) * (Q2R r) ^ (i + 1 - j)) i. 
Proof. Admitted.
