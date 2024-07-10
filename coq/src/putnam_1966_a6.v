Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a6
    (a : nat -> (nat -> R))
    (ha : forall n : nat, ge n 1 -> a n n = INR n /\ (forall m : nat, ge m 1 -> lt m n -> a n m = (INR m) * sqrt (1 + a n (S m))))
    : filterlim (fun n => a n (S 0)) eventually (locally 3).
Proof. Admitted.
