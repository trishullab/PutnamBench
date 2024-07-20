Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_a3
    (x : nat -> R)
    (hx1 : 0 < (x (S O)) < 1)
    (hxi : forall n : nat, ge n 1 -> x (S n) = (x n) * (1 - (x n)))
    : filterlim (fun n : nat => (INR n) * (x n)) eventually (locally 1).
Proof. Admitted.
