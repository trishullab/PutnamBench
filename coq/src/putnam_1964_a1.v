From mathcomp Require Import all_algebra all_ssreflect fintype.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Theorem putnam_1964_a1
    (A : set (R*R))
    (hAcard : A #= [set: 'I_6])
    (dists : set R := [set d : R | exists a b : R*R, a \in A /\ b \in A /\ a != b /\ d = @Num.sqrt R ((fst a - fst b) ^+ 2 + (snd a - snd b) ^+ 2)])
    : supremum 1 dists / infimum 1 dists >= @Num.sqrt R 3.
Proof. Admitted.