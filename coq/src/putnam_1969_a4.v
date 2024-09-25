From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype measure lebesgue_measure lebesgue_integral.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.
Import Order.TTheory GRing.Theory Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1969_a4
    (f : nat -> R := fun n => \sum_(1 <= i < n.+1) ((-1)^(i.+1) / ((i%:R) ^+ i)))
    : f @ \oo --> (\int[mu]_(x in [set t : R | 0 < t < 1]) (expR (x * ln x))).
Proof. Admitted.