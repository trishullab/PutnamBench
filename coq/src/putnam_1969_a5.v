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
Theorem putnam_1969_a5 :
    forall x y : R -> R, (forall t : R, differentiable x t /\ differentiable y t) -> 
    (forall t : R, t > 0 -> x 0 = y 0 <-> exists u : R -> R, continuous u /\
    (x t = 0 /\ y t = 0 /\ forall p : R, x^`() p = -2 * y p + u p /\ y^`() p = -2 * x p + u p)).
Proof. Admitted.