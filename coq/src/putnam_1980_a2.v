From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Definition putnam_1980_a2_solution : nat -> nat -> nat := fun r s : nat => (1 + 4 * r + 6 * r ^2) * (1 + 4 * s + 6 * s ^ 2).
Theorem putnam_1980_a2
    (r s : nat)
    (abcdlcm : nat -> nat -> nat -> nat -> Prop)
    (rpos : r > 0 /\ s > 0) 
    (habcdlcm : forall a b c d, abcdlcm a b c d <-> (a > 0 /\ b > 0 /\ c > 0 /\ d > 0 /\ (3 ^ r * 7 ^ s = lcmn (lcmn a b) c) /\ (3 ^ r * 7 ^ s = lcmn (lcmn a b) d) /\ (3 ^ r * 7 ^ s = lcmn (lcmn a c) d) /\ (3 ^ r * 7 ^ s = lcmn (lcmn b c) d)))
    : [set t : 4.-tuple nat | abcdlcm (tnth t (inord 0)) (tnth t (inord 1)) (tnth t (inord 2)) (tnth t (inord 3))] #= `I_(putnam_1980_a2_solution r s).
Proof. Admitted.
