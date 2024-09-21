From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals normedtype derive topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

(* Note: Lacking clean way of defining twice-differentiable functions as in Lean *)
(* Note: Slightly weaker as this assumes a closed interval instead of a more general real interval. The heart of the problem is unchanged. *)
Variable R : realType.
Theorem putnam_1975_a5
    (a b : R)
    (hab : a < b)
    (f y1 y2 : R -> R)
    (hfcont : continuous f)
    (diff : (R -> R) -> Prop :=  fun g => (forall x : R, differentiable g x /\ differentiable g^`() x) /\ continuous g^`(2))
    (hycdiff : diff y1 /\ diff y2)
    (hy1sol : forall x : R, y1^`(2) x = (f x) * (y1 x))
    (hy2sol : forall x : R, y2^`(2) x = (f x) * (y2 x))
    (hylinindep : forall c1 c2 : R, (forall x : R, c1 * y1 x + c2 * y2 x = 0) -> (c1 = 0 /\ c2 = 0))
    (hyI : forall x : R, a <= x <= b -> (y1 x > 0 /\ y2 x > 0))
    : exists c : R, c > 0 /\ (let z : R -> R := fun x => c * (@Num.sqrt R ((y1 x) * (y2 x))) in
        forall x : R, a <= x <= b -> z^`(2) x + 1/((z x) ^+ 3) = (f x) * (z x)).
Proof. Admitted.
