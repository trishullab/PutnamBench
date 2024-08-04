Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a2 
    (x : nat -> R)
    (xnonzero : forall n : nat, x n <> 0)
    (hx : forall n : nat, ge n 1 -> pow (x n) 2 - x (pred n) * x (S n) = 1)
    : exists a : R, forall n : nat, ge n 1 -> x (S n) = a * x n - x (pred n).
Proof. Admitted.
