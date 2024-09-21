From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology sequences normedtype.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.
Import numFieldNormedType.Exports.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1978_b2_solution : rat := 7/4.
Theorem putnam_1978_b2
    (f : nat -> R := fun n => \sum_(1 <= i < n.+1) (\sum_(1 <= j < n.+1) (1%R)/(i%:R ^+ 2 * j%:R + 2 * i%:R * j%:R + i%:R * j%:R ^+ 2)))
    : (f @ \oo --> ratr putnam_1978_b2_solution).
Proof. Admitted.