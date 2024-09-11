From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Definition putnam_1974_a1_solution : nat := 11%nat.
Theorem putnam_1974_a1
    (conspiratorial : set int -> Prop := fun A => forall a b c : int, (a \in A) -> (b \in A) -> (c \in A) -> (a > 0) -> (b > 0) -> (c > 0) -> (a <> b) -> (b <> c) -> (c <> a) -> (~ coprimez a b \/ ~ coprimez b c \/ ~ coprimez c a))
    : forall A : set int, A `<=` [set x : int | 1 <= x <= 16] -> conspiratorial A -> A #<= [set : 'I_(putnam_1974_a1_solution)].
Proof. Admitted.
