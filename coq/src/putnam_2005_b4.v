From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Theorem putnam_2005_b4
    (m n : int)
    (mnpos : m > 0 /\ n > 0)
    (f : int -> int -> nat)
    (hf : forall m' n' : int, (m' > 0 /\ n' > 0) -> [set: 'I_(f m' n')] #= [set x : seq int | (size x)%:Z = n' /\ \sum_(i <- x) `|i| <= m'])
    : f m n = f n m.
Proof. Admitted.