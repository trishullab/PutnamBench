From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals exp sequences topology normedtype derive.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1970_b4
    (x : R -> R)
    (hdiff : (forall t : R, 0 <= t <= 1 -> differentiable x t) /\ (forall t : R, 0 <= t <= 1 -> differentiable (x^`()) t))
    (hx : x 1 - x 0 = 1)
    (hv : x^`() 0 = 0 /\ x^`() 1 = 0)
    (hs : forall t : R, 0 < t < 1 -> `| x^`() t | <= 3/2)
    : exists t : R, 0 <= t <= 1 /\ `| (x^`(2)) t | >= 9/2.
Proof. Admitted.
