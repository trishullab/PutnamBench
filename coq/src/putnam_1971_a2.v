From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1971_a2_solution : set ({poly R}) := [set ('X : {poly R})]. 
Theorem putnam_1971_a2
    : forall P : {poly R}, (P.[0] = 0 /\ (forall x : R, P.[x ^+ 2 + 1] = (P.[x]) ^+ 2 + 1)) <-> P \in putnam_1971_a2_solution.
Proof. Admitted.