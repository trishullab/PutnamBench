From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Definition putnam_1976_a3_solution : nat -> nat -> nat -> nat -> Prop := fun p r q s => (p = 3%nat /\ r = 2%nat /\ q = 2%nat /\ s = 3%nat) \/ (p = 2%nat /\ r = 3%nat /\ q = 3%nat /\ s = 2%nat).
Theorem putnam_1976_a3
    : forall (p r q s: nat), ((prime p /\ prime q /\ gt r 1 /\ gt s 1 /\ `|(p^r)%:Z - (q^s)%:Z| = 1) <-> putnam_1976_a3_solution p r q s).
Proof. Admitted.