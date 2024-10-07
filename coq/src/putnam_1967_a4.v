
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype topology measure lebesgue_measure lebesgue_integral.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1967_a4
    (lambda : R)
    (hlambda : lambda > 1 / 2)
    : ~exists u : R -> R, forall x : R, 0 <= x <= 1 -> u x = 1 + lambda * \int[mu]_(y in [set y | 0 <= y <= 1]) (u y * u (y - x)).
Proof. Admitted.