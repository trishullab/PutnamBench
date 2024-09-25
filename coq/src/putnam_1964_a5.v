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
Theorem putnam_1964_a5
    (pa : (nat -> R) -> Prop := fun a =>
        (forall n : nat, a n > 0) /\
        (exists L : R, (fun N => \sum_(0 <= n < N) 1/(a n)) @ \oo --> L))
    : exists k : R, forall a : nat -> R, pa a ->
        (exists L1 L2 : R, 
            (fun N : nat => \sum_(0 <= n < N) ((n%:R + 1)/(\sum_(i < n.+1) a i))) @ \oo --> L1 /\
            (fun N : nat => \sum_(0 <= n < N) (1/(a n))) @ \oo --> L2 /\
            L1 <= k * L2).
Proof. Admitted.