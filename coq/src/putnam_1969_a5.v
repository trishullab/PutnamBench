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
Theorem putnam_1969_a5
    (x0 y0 t : R)
    (ht : 0 < t) :
    x0 = y0 <-> exists x y u : R -> R,
        (forall x' : R, differentiable x x') /\
        (forall y' : R, differentiable y y') /\
        continuous u /\
        (forall x' : R, x^`() x' = -2 * (y x') + u x') /\
        (forall y' : R, y^`() y' = -2 * (x y') + u y') /\
        x 0 = x0 /\
        y 0 = y0 /\
        x t = 0 /\
        y t = 0.
Proof. Admitted.