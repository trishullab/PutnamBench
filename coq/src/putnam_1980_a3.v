From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals lebesgue_integral measure lebesgue_measure trigo sequences exp.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

(* Note: Unaware of definition of non-integer powers, workaround is exp log*)
Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1980_a3_solution : R := pi/4.
Theorem putnam_1980_a3
    : \int[mu]_(x in [set t : R | 0 < t < pi/2]) (fun (x : R) => 1/(1 + expR (ln (@tan R x) * (@Num.sqrt R 2)))) x = putnam_1980_a3_solution.
Proof. Admitted.
