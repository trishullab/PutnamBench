From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences normedtype topology.
From mathcomp Require Import classical_sets cardinality.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Theorem putnam_1964_b1
    (a b : nat -> nat)
    (h : forall n : nat, lt 0 (a n))
    (h' : exists L : R, (fun N => \sum_(0 <= n < N) 1/(a n)%:R) @ \oo --> L)
    (h'' : forall n : nat, [set : 'I_(b n)] #= [set k : nat | le (a k) n])
    (f : nat -> R := fun n => (b n)%:R / n%:R)
    : f @ \oo --> 0.
Proof. Admitted.