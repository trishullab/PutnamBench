Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1994_a1
    (a : nat -> R)
    (ha : forall n : nat, gt n 0 -> 0 < a n <= a (mul 2 n) + a (add (mul 2 n) 1))
    : ~ ex_finite_lim_seq (fun n => sum_n (fun m => a m) n).
Proof. Admitted.
