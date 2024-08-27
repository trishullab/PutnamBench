From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1979_a5
    (S : R -> nat -> int)
    (hS : forall (x : R) (n : nat), S x n = floor (n%:R * x))
    (P : R -> Prop)
    (hP : forall (x : R), P x <-> (x ^+ 3) - 10 * (x ^+ 2) + 29 * x - 25 = 0)
    : exists (a b : R), (a <> b) /\ P a /\ P b /\ (forall n : nat, exists m : int, m >= n%:Z /\ (exists c d : nat, S a c = m /\ S b d = m)).
Proof. Admitted.

