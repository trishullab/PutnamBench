From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.
Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1980_b1_solution : set R := [set x : R | x >= 1/2].
Theorem putnam_1980_b1
    (c : R)
    : (forall x : R, (expR x + expR (-x)) / 2 <= expR (c * x^2)) <-> c \in putnam_1980_b1_solution.
Proof. Admitted.
