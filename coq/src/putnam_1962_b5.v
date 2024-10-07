From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1962_b5
    (n : nat)
    (ng1 : gt n 1)
    (sumf : nat -> R := fun N => \sum_(1 <= i < N.+1) ((i%:R / N%:R) ^+ N))
    : (3 * (n%:R + 1) + 1) / (2 * n%:R + 2) < sumf n < 2.
Proof. Admitted.