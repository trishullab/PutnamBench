From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1974_a4_solution : nat -> R := fun n => (n%:R / 2 ^+ (n.-1)) * 'C(n.-1, n./2)%:R.
Theorem putnam_1974_a4
    (n : nat)
    (hn : gt n 0)
    : 1/(2 ^ (n.-1)) * (\sum_(0 <= k < (n./2).+1) ((n%:R - 2 * k%:R) * 'C(n, k)%:R)) = putnam_1974_a4_solution n.
Proof. Admitted.