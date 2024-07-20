Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_1995_a4
    (n : nat)
    (hn : gt n 0)
    (necklace : nat -> R)
    (hnecklaceint : forall i : nat, exists k : Z, necklace i = IZR k)
    (hnecklacesum : sum_n necklace n = INR n - 1)
    : exists cut : nat, le cut (n-1) /\ (forall k : nat, le k (n-1) -> (sum_n (fun i => necklace ((cut + i) mod n)) k) <= INR k).
Proof. Admitted.
