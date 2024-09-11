From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1978_b6
    (a : nat -> nat -> R)
    (ha : forall i j : nat, 0 <= a i j <= 1)
    (m n : nat)
    (mnpos : ge m 0 /\ ge n 0)
    : (\sum_(1 <= i < m.+1) (\sum_(1 <= j < (m * i).+1) ((a i j) / i%:R))) ^+ 2 <= 2 * (m%:R) * (\sum_(1 <= i < n.+1) (\sum_(1 <= j < (m*i).+1) a i j)).
Proof. Admitted.