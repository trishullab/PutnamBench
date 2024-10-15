From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_2000_a6
    (f : {poly int})
    (a : nat -> int)
    (ha0 : a 0%nat = 0)
    (ha : forall n : nat, a (n.+1) = f.[a n])
    : (exists m : nat, gt m 0 /\ a m = 0) -> (a 1%nat = 0 \/ a 2%nat = 0).
Proof. Admitted.