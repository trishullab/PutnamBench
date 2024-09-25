From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals topology trigo derive normedtype sequences exp.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1963_b3_solution : set (R -> R) := 
    [set f | exists A k : R, f = (fun x => A * (expR (k * x) - expR (-k * x))/2) \/ f = (fun x => A * x) \/ f = fun x => (A * sin (k * x))].
Theorem putnam_1963_b3
    (f : R -> R)
    (fdiff : forall x : R, differentiable f x /\ differentiable f^`() x)
    : ((forall x y : R, (f x) ^+ 2 - (f y) ^+ 2 = f (x + y) * f (x - y)) <-> f \in putnam_1963_b3_solution).
Proof. Admitted.