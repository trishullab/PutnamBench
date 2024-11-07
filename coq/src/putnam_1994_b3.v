From mathcomp Require Import all_ssreflect ssralg ssrnum.
From mathcomp Require Import reals normedtype derive topology sequences.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1993_b3_solution : set R := [set k | k < 1].
Theorem putnam_1993_b3
    : [set k | forall f (hf : forall x, differentiable f x /\ 0 < f x < f^`() x),
        exists N : R, forall x, N < x -> expR (k * x) < f x] = putnam_1993_b3_solution.
Proof. Admitted.