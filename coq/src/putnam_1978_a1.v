From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Theorem putnam_1978_a1
    (A B : set int)
    (hA : A = [set k : int | exists j : int, 0 <= j /\ j <= 33 /\ k = 3 * j + 1])
    (hB : B `<=` A /\ B #= [set : `I_(20)])
    : exists m n : int, m \in B /\ n \in B /\ m <> n /\ m + n = 104.
Proof. Admitted.