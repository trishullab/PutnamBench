From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Definition putnam_1974_b6_solution : (nat * nat * nat) := ((2^1000 - 1) %/ 3, (2^1000 - 1) %/ 3, (2^1000 - 1) %/ 3 + 1).
Theorem putnam_1974_b6
    (n : nat := 1000)
    (count0 count1 count2 : nat)
    (hcount0 : [set : 'I_(count0)] #= [set A : set nat | A `<=` [set x : nat | 1 <= x <= n] /\ exists j : nat, A #= [set : 'I_(3*j)]])
    (hcount1 : [set : 'I_(count1)] #= [set A : set nat | A `<=` [set x : nat | 1 <= x <= n] /\ exists j : nat, A #= [set : 'I_(3*j+1)]])
    (hcount2 : [set : 'I_(count2)] #= [set A : set nat | A `<=` [set x : nat | 1 <= x <= n] /\ exists j : nat, A #= [set : 'I_(3*j+2)]])
    : (count0, count1, count2) = putnam_1974_b6_solution.
Proof. Admitted.
