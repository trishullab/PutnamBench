From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology trigo normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1970_b1_solution : R := expR (2 * ln 5 - 4 + 2 * atan 2).
Theorem putnam_1970_b1
    (f : nat -> R := fun n => 1/(n%:R ^+ 4) * \prod_(1 <= i < n.*2.+1) expR (1/(n%:R) * ln ((n%:R ^+ 2) + (i%:R ^+ 2))))
    : f @ \oo --> putnam_1970_b1_solution.
Proof. Admitted.