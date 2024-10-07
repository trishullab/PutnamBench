From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_1967_b2
    (p r A B C alpha beta gamma : R)
    (prbound : 0 <= p <= 1 /\ 0 <= r <= 1)
    (id1 : forall x y : R, (p * x + (1 - p) * y) ^+ 2 = A * x ^+ 2 + B * x * y + C * y ^+ 2)
    (id2 : forall x y : R, (p * x + (1 - p) * y) * (r * x + (1 - r) * y) = alpha * x ^+ 2 + beta * x * y + gamma * y ^+ 2)
    : sup [set A; B; C] >= 4/9 /\ sup [set alpha; beta; gamma] >= 4/9.
Proof. Admitted.