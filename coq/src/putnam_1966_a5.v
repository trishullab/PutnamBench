From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology normedtype.
From mathcomp Require Import classical_sets.
Import numFieldTopology.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1966_a5
    (C := [set f : R -> R | continuous f])
    (T : (R -> R) -> (R -> R))
    (imageTC : forall f : R -> R, f \in C -> T f \in C)
    (linearT : forall a b : R, forall f g : R -> R, f \in C -> g \in C -> T (fun x : R => a * f x + b * g x) = (fun x => a * T f x + b * T g x))
    (localT : forall r s : R, r <= s -> forall f g : R -> R, f \in C -> g \in C -> (forall x : R, r <= x <= s -> f x = g x) -> (forall x : R, r <= x <= s -> T f x = T g x))
    : exists f : R -> R, f \in C /\ (forall g : R -> R, g \in C -> T g = fun x => f x * g x).
Proof. Admitted.