From mathcomp Require Import all_algebra all_ssreflect fintype.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Theorem putnam_1965_b5
    (E V : nat)
    (simple : set ('I_V * 'I_V) -> Prop := (fun G : set ('I_V * 'I_V) => (forall v : 'I_V, ~G (v, v)) /\ (forall v w : 'I_V, G (v, w) <-> G (w, v))))
    (hE : 4 * E%:Z <= (V%:Z) ^+ 2)
    : exists G : set ('I_V * 'I_V), simple G /\ G #= [set: 'I_(2*E)] /\ ~exists a b c : 'I_V, G (a, b) /\ G (a, c) /\ G (b, c).
Proof. Admitted.
