From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Definition putnam_2017_a1_solution : set int := [set x : int | x > 0 /\ (x = 1 \/ (5 %| x)%Z)].
Theorem putnam_2017_a1
    (IsQualifying : (set int) -> Prop)
    (IsQualifying_def : forall S, IsQualifying S <-> 
        (forall n : int, n \in S -> n > 0) /\
        2 \in S /\
        (forall n : int, n > 0 /\ (n ^ 2) \in S -> n \in S) /\
        (forall n : int, n \in S -> (n + 5) ^ 2 \in S))
    (S : set int)
    (hS : IsQualifying S /\ forall T : set int, T `<=` S -> ~ IsQualifying T)
    : ~` S `&` [set n : int | n > 0] = putnam_2017_a1_solution.
Proof. Admitted.