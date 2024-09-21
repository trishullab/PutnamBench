Section putnam_1969_b5.
Require Import Reals Finite_sets. From Coquelicot Require Import Coquelicot.
Open Scope R.

(* Note: Not moving this problem to a mathcomp-dependent formalization as mathcomp-analysis 
   does not yet include an easy definition for eventually, which currently only supports nats.
   See line 657 of mathcomp-analysis/topology.v which has yet to extend eventually to arbitrary lattices.*)
Theorem putnam_1969_b5
    (a : nat -> R)
    (ha : forall n : nat, 0 < a n < a (Nat.add n 1))
    (hinvasum : ex_finite_lim_seq (fun n => sum_n (fun i => 1 / (a i)) n))
    (k : R -> nat)
    (hk : forall x : R, cardinal nat (fun n => a n <= x) (k x))
    : filterlim (fun t : R => INR (k t)/t) (Rbar_locally p_infty) (locally 0).
Proof. Admitted.
End putnam_1969_b5.