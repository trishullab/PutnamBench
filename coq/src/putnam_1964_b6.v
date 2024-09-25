From mathcomp Require Import all_algebra all_ssreflect morphism.
From mathcomp Require Import reals sequences exp.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1964_b6
    (D : set (R * R) := [set xy | xy.1 ^+ 2 + xy.2 ^+ 2 <= 1])
    (cong : (set (R * R)) -> (set (R * R)) -> Prop :=
        fun A B => exists f : R * R -> R * R, B = image A f /\ forall v w : R * R, (v.1 - w.1) ^+ 2 + (v.2 - w.2) ^+ 2 = ((f v).1 - (f w).1) ^+ 2 + ((f v).2 - (f w).2) ^+ 2)
    : ~exists A B : set (R * R), cong A B /\ A `&` B = set0 /\ A `|` B = D.
Proof. Admitted.