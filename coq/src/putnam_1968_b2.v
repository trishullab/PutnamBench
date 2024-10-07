From mathcomp Require Import all_algebra all_ssreflect fintype fingroup.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope group_scope.
Open Scope classical_set_scope.
Open Scope card_scope.

Theorem putnam_1968_b2
    (G : finGroupType)
    (A : set G)
    (Acard : nat)
    (hA : A #= [set: 'I_Acard] /\ Acard > #|G| ./2)
    : forall g : G, exists x y : G, x \in A /\ y \in A /\ g = x * y.
Proof. Admitted.
