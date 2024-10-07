From mathcomp Require Import all_ssreflect all_algebra fintype.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Theorem putnam_1966_b4
  (m n : nat)
  (S : set nat)
  (hS : S #= [set : 'I_(m*n+1)] /\ forall i : nat, S i -> i > 0)
  : exists T : set nat, T `<=` S /\
    ((T #= [set : 'I_(m+1)] /\ (forall i j : nat, T i -> T j -> i <> j -> ~(j%|i))) \/
    (T #= [set : 'I_(n+1)] /\ (forall i j : nat, T i -> T j -> i <> j -> j < i -> (j%|i)))).
Proof. Admitted.