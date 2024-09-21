From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1971_a3
    (a b c : R * R)
    (r : R)
    (habclattice : fst a = (floor (fst a))%:~R /\ snd a = (floor (snd a))%:~R /\ fst b = (floor (fst b))%:~R /\ snd b = (floor (snd b))%:~R /\ fst c = (floor (fst c))%:~R /\ snd c = (floor (snd c))%:~R)
    (habcneq : a <> b /\ b <> c /\ c <> a)
    (hr : r > 0)
    (oncircle : (R * R) -> R -> (R * R) -> Prop := fun C rad p => (fst C - fst p)^+2 + (snd C - snd p)^+2 = rad^+2)
    (hcircle : exists C : R * R, oncircle C r a /\ oncircle C r b /\ oncircle C r c)
    : ((fst a - fst b)^+2 + (snd a - snd b)^+2) * ((fst b - fst c)^+2 + (snd b - snd c)^+2) * ((fst c - fst a)^+2 + (snd c - snd a)^+2) >= 4 * r ^+ 2.
Proof. Admitted.
