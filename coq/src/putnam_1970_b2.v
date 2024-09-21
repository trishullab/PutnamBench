From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences measure lebesgue_measure lebesgue_integral normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1970_b2
    (T : R)
    (H : {poly R})
    (hT : T > 0)
    (hH : le (size H) 4%nat)
    : (H.[(-T/(@Num.sqrt R 3))] + H.[(T/(@Num.sqrt R 3))])/2 = 1/(2*T) * \int[mu]_(t in [set x : R | -T <= x <= T]) H.[t].
Proof. Admitted.