From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals sequences topology measure lebesgue_measure lebesgue_integral normedtype derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1973_b4_solution : R -> R := fun x => x.
Theorem putnam_1973_b4
    (f : R -> R)
    (hprop : (R -> R) -> Prop := fun g => (forall x : R, differentiable g x) /\ (continuous f^`()) /\ (forall x : R, 0 < f^`() x <= 1) /\ g 0 = 0)
    (hf : hprop f)
    : (\int[mu]_(x in [set x | 0 <= x <= 1]) f x) ^+ 2 >= \int[mu]_(x in [set x | 0 <= x <= 1]) ((f x) ^+ 3) /\
      (\int[mu]_(x in [set x | 0 <= x <= 1]) putnam_1973_b4_solution x) ^+ 2 >= \int[mu]_(x in [set x | 0 <= x <= 1]) ((putnam_1973_b4_solution x) ^+ 3).
Proof. Admitted.
