Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import div bigop.
Definition putnam_1981_a1_solution : R := Rdiv 1 8.
Theorem putnam_1981_a1
    (P : nat -> nat -> Prop := fun n k => 5 ^ k %| (\prod_(1<=i<n+1) (i^i)) = true)
    (f : nat -> nat)
    (hf : forall (n: nat), gt n 1 -> P n (f n) /\ forall (k: nat), P n k -> le k (f n))
    : Lim_seq (fun n => INR (f n) / INR n ^ 2) = putnam_1981_a1_solution.
Proof. Admitted.
