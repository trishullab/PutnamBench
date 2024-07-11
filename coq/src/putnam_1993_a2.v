Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a2 
    (x : nat -> R)
    (n : nat)
    (hn : gt n 0)
    : pow (x n) 2 - x (pred n) * x (S n) = 1 ->
    exists (a: R), ge n 1 -> x (S n) = a * x n - x (pred n).
Proof. Admitted.
