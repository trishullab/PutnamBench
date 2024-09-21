From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype topology sequences boolp.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1977_b1_solution : R := 2/3.
Theorem putnam_1977_b1
    (f : R ^nat := fun n : nat => \prod_(0 <= i < n) (if (i <= 1)%nat then 1 else (i%:R ^+ 3 - 1)/(i%:R ^+ 3 + 1)))
    : f @ \oo --> putnam_1977_b1_solution.
Proof. Admitted.