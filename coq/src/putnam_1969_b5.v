Section putnam_1969_b5.
Require Import Reals Finite_sets. From Coquelicot Require Import Coquelicot.
Open Scope R.
Theorem putnam_1969_b5
    (a : nat -> R)
    (ha : forall n : nat, 0 < a n < a (Nat.add n 1))
    (hinvasum : ex_finite_lim_seq (fun n => sum_n (fun i => 1 / (a i)) n))
    (k : R -> nat)
    (hk : forall x : R, cardinal nat (fun n => a n <= x) (k x))
    : filterlim (fun t : R => INR (k t)/t) (Rbar_locally p_infty) (locally 0).
Proof. Admitted.
End putnam_1969_b5.
