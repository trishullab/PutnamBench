From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals exp sequences derive topology normedtype.
From mathcomp Require Import classical_sets cardinality.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1966_b6
    (y : R -> R)
    (hy : forall x : R, differentiable y x /\ differentiable (y^`()) x)
    (diffeq : forall x : R, y^`(2) x + y x * expR x = 0)
    : exists r s N : R, forall x : R, x > N -> r <= y x <= s.
Proof. Admitted.