From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Definition putnam_1973_a4_solution : nat := 3.
Theorem putnam_1973_a4
    (f : R -> R := fun x => (expR (x * ln 2) - 1 - x ^+ 2))
    : [set x : R | f x = 0] #= [set : 'I_putnam_1973_a4_solution].
Proof. Admitted.