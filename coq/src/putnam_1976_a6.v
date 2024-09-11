From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals derive classical_sets normedtype topology boolp.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1976_a6
    (f : R -> R)
    (hfdiff : (forall x : R, differentiable f x /\ differentiable f^`() x) /\ continuous f^`(2))
    (hfbd : forall x : R, `|f x| <= 1)
    (hf0 : (f 0) ^+ 2 + (f^`() 0) ^+ 2 = 4)
    : exists y : R, f y + f^`(2) y = 0.
Proof. Admitted.
