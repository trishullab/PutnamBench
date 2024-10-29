From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo lebesgue_integral lebesgue_measure measure.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.
Local Open Scope ring_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Theorem putnam_1980_a5
    (P : {poly R})
    (Pnonconst : gtn (size P) (1%nat))
    : finite_set [set x : R | \int[mu]_(t in [set t : R | 0 <= t <= x]) (fun y => P.[y] * (sin y)) t = 0 /\ \int[mu]_(t in [set t : R | 0 <= t <= x]) (fun y => P.[y] * (cos y)) t = 0].
Proof. Admitted.