From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1967_a3_solution : nat := 5.
Theorem putnam_1967_a3
    (pform pzeros pall : {poly R} -> Prop)
    (hpform : forall p, pform p <-> size p = 3%nat /\ forall i : nat, lt i 3 -> p`_i = (floor p`_i)%:~R)
    (hpzeros : forall p, pzeros p <-> exists z1 z2 : R, 0 < z1 < 1 /\ 0 < z2 < 1 /\ z1 <> z2 /\ p.[z1] = 0 /\ p.[z2] = 0)
    (hpall : forall p, pall p <-> pform p /\ pzeros p /\ (p`_2 > 0)%R)
    : (exists p, pall p /\ p`_2 = putnam_1967_a3_solution%:R) /\
      (forall p, pall p -> p`_2 >= putnam_1967_a3_solution%:R).
Proof. Admitted.