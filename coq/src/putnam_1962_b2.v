From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope ring_scope.
Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1962_b2
    : exists f : R -> set nat, forall a b : R, a < b -> f a `<` f b.
Proof. Admitted.