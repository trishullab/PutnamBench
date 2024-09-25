From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1971_a6
    (c : R)
    (hc : forall n : int, n > 0 -> exists m : int, expR (c * ln n%:~R) = m%:~R)
    : exists m : int, m >= 0 /\ c = m%:~R.
Proof. Admitted.
