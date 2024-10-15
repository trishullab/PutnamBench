From mathcomp Require Import all_algebra all_ssreflect classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Definition putnam_1996_a3_solution : Prop := False.
Theorem putnam_1996_a3 :
    (forall choices : 'I_20 -> set 'I_6,
        exists (students : set 'I_20) (courses : set 'I_6),
            students #= [set: 'I_5] /\ courses #= [set: 'I_2] /\
            (courses `<=` \bigcap_(s in students) (choices s) \/ courses `<=` \bigcap_(s in students) (~` choices s)))
    <-> putnam_1996_a3_solution.
Proof. Admitted.
