From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology normedtype measure lebesgue_measure lebesgue_integral.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1964_a2_solution := fun a : R => (set0 : set (R -> R)).
Theorem putnam_1964_a2
    (alpha : R)
    : putnam_1964_a2_solution alpha = [set f : R -> R | 
        (forall x : R, 0 <= x <= 1 -> (f x > 0)
        /\ {within [set x | 0 <= x <= 1], continuous f}) 
        /\ \int[mu]_(x in [set x | 0 <= x <= 1]) (x * f x) = alpha
        /\ \int[mu]_(x in [set x | 0 <= x <= 1]) (x ^+ 2 * f x) = alpha ^+ 2].
Proof. Admitted.