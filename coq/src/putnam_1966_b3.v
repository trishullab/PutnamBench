Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1966_b3
    (p : nat -> R)
    (hpos : forall n : nat, p n > 0)
    (hconv : exists r : R, filterlim (fun m : nat => sum_n (fun n => 1 / (p n)) m) eventually (locally r))
    : exists r : R, filterlim (fun m : nat => sum_n (fun n => (p n) * (INR n)^2/(sum_n (fun k => p k) n)^2) m) eventually (locally r).
Proof. Admitted.
