From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype topology sequences measure lebesgue_measure lebesgue_integral.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_2016_a6_solution : R := 5 / 6.
Theorem putnam_2016_a6
    (C : R)
    (p : R -> Prop)
    (max : {poly R} -> R)
    (hmax : forall P, exists x : R, 0 <= x <= 1 /\ P.[x] = max P)
    (hmaxub : forall P, forall x, 0 <= x <= 1 -> P.[x] <= max P)
    (hp : forall c, p c <-> forall P : {poly R}, (size P = 4%nat) -> (exists x : R, 0 <= x <= 1 /\ P.[x] = 0) -> \int[mu]_(x in [set x | 0 <= x <= 1]) P.[x] <= c * max P)
    : p putnam_2016_a6_solution /\ forall C, p C -> C <= putnam_2016_a6_solution.
Proof. Admitted.