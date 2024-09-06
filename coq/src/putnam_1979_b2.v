From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import boolp reals measure lebesgue_measure lebesgue_integral topology normedtype exp sequences.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.
Import numFieldNormedType.Exports.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1979_b2_solution : R -> R -> R := fun a b => (expR ((b/(b-a)) * ln b))/(expR 1 * (expR ((a/(b-a)) * ln a))).
Theorem putnam_1979_b2
    (a b : R)
    (hab : 0 < a < b)
    (f : R -> R := fun t : R =>  expR (1/t * ln (\int[mu]_(x in [set x : R | 0 <= x <= 1]) expR (t * ln (b * x + a * (1 - x))))))
    : f @ (dnbhs 0) --> putnam_1979_b2_solution a b.
Proof. Admitted.