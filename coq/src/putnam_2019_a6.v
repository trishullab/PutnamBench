From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals derive normedtype sequences topology exp.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition at_right := fun (x : R) => within (fun y => y > x) (nbhs x).
Theorem putnam_2019_a6
    (g : R -> R)
    (r : R)
    (hcont : {within [set x | 0 <= x <= 1], continuous g})
    (hdiff : (forall x : R, 0 < x < 1 -> differentiable g x /\ differentiable g^`() x) /\ {within [set x | 0 <= x <= 1], continuous g^`()})
    (hr : r > 1)
    (hlim : (fun x : R => g x / (expR (r * ln x))) @ (at_right 0) --> 0)
    : g^`() @ (at_right 0) --> 0 \/ (fun x : R => sup [set y : R | exists x' : R, 0 < x' <= x /\ y = expR (r * ln x') * `|g^`(2) x'|]) @ (at_right 0) --> +oo.
Proof. Admitted.