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
Definition putnam_2012_a6_solution : Prop := True.
Theorem putnam_2012_a6
    (p : ((R * R) -> R) -> Prop)
    (hp : forall f : (R * R) -> R, p f <->
        continuous f /\ forall x1 x2 y1 y2 : R, x2 > x1 -> y2 > y1 -> (x2 - x1) * (y2 - y1) = 1 ->
            \int[mu]_(x in [set x | x1 <= x <= x2]) (fun x' => \int[mu]_(y in [set y | y1 <= y <= y2]) f (x', y)) x = 0)
    : (forall f, forall x y, p f -> f (x, y) = 0) <-> putnam_2012_a6_solution.
Proof. Admitted.