From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals sequences normedtype topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

(* Note: There does not appear to be a clean way to express the eventually filter for types other than nats. *)
Variable R : realType.
Theorem putnam_1964_b3
    (f : R -> R)
    (hf : continuous f /\ forall alpha : R, alpha > 0 -> 
        (fun n : nat => f (n%:R * alpha)) @ \oo --> 0)
    : f @ (filter_from setT (fun N => [set n | (N <= n)%R])) --> 0.
Proof. Admitted.