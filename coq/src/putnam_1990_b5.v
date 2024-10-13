From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences topology normedtype.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Definition putnam_1990_b5_solution : Prop := True.
Theorem putnam_1990_b5 :
    (exists a : nat -> R, (forall i : nat, a i != 0) /\
        (forall n : nat, ge n 1 -> (exists roots : seq R, uniq roots /\ size roots = n /\ all (fun x => 0 == \sum_(0 <= i < n.+1) (a i) * (x) ^ i) roots))).
Proof. Admitted.