From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1970_b3
    (S : set (R * R))
    (a b : R)
    (hab : a < b)
    (hS : forall s : R * R, s \in S -> a < s.1 < b)
    (hSclosed : closed S)
    : closed [set y : R | exists x : R, (x, y) \in S].
Proof. Admitted.
