From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1967_b5
    (f : nat -> R := fun n => \sum_(0 <= i < n) ((binomial (n + i - 1) i)%:R / (2 ^+ (n + i))))
    : forall n, gt n 0 -> 1%R/2 = f n.
Proof. Admitted.