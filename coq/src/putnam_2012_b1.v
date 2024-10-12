From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp topology.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_2012_b1
    (S : set (R -> R))
    (hS : forall f : R -> R, f \in S -> forall x : R, 0 <= x -> 0 <= f x)
    (f1 : R -> R := fun x => expR x - 1)
    (f2 : R -> R := fun x => ln (x + 1))
    (hf1 : f1 \in S)
    (hf2 : f2 \in S)
    (hsum : forall f g : R -> R, f \in S -> g \in S -> (fun x => f x + g x) \in S)
    (hcomp : forall f g : R -> R, f \in S -> g \in S -> (fun x => f (g x)) \in S)
    (hdiff : forall f g : R -> R, f \in S -> g \in S -> (forall x : R, f x >= g x) -> (fun x => f x - g x) \in S)
    : forall f g : R -> R, f \in S -> g \in S -> (fun x => f x * g x) \in S.
Proof. Admitted.