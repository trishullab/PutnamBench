From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2022_a2_solution : nat -> nat := fun n => (n.*2 - 2)%nat.
Theorem putnam_2022_a2
    (n : nat)
    (hn : ge n 2)
    (S : set {poly R} := [set P | size P = n.+1])
    (negs : {poly R} -> nat)
    (hnegs : forall P, negs P = count (fun cf => cf < 0) (P : seq R))
    : (forall P, P \in S -> le (negs (P ^ 2)) (putnam_2022_a2_solution n)) /\
      (exists P, P \in S /\ negs (P ^ 2) = putnam_2022_a2_solution n).
Proof. Admitted.

