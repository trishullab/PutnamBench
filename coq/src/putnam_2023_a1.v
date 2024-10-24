From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals trigo normedtype derive topology sequences.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2023_a1_solution : nat := 18.
Theorem putnam_2023_a1
    (f : nat -> R -> R := fun n x => \prod_(1 <= i < n.+1) cos (i%:R * x))
    : gt putnam_2023_a1_solution 0 /\ `|(f putnam_2023_a1_solution)^`(2) 0| > 2023 /\
      forall n : nat, gt n 0 -> lt n putnam_2023_a1_solution -> `|(f n)^`(2) 0| <= 2023.
Proof. Admitted.
