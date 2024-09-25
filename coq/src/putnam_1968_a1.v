From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences trigo measure lebesgue_measure lebesgue_integral normedtype topology.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1968_b1
    : 22/7 - pi = \int[mu]_(x in [set x : R | 0 <= x <= 1]) (x ^ 4 * (1 - x) ^ 4 / (1 + x ^ 2)).
Proof. Admitted.
