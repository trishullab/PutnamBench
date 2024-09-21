From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences topology normedtype trigo.
From mathcomp Require Import classical_sets cardinality.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Theorem putnam_1970_a1
    (a b : R)
    (ha : a > 0)
    (hb : b > 0)
    (f : R -> R := fun x : R => expR (a * x) * cos (b * x))
    (p : nat -> R)
    (hp : exists c : R, c > 0 /\ forall x : R, ball 0 c x -> (fun n : nat => \sum_(0 <= i < n) (p i) * x ^+ i) @ \oo --> f x)
    (S := [set n : nat | p n = 0])
    : S = set0 \/ infinite_set S.
Proof. Admitted.