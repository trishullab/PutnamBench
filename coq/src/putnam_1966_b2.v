From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Theorem putnam_1966_b2
    (S : int -> set int := fun n => [set i | n <= i <= n + 9])
    : forall n : int, n > 0 -> (exists k : int, k \in S n /\ (forall m : int, m \in S n ->  k <> m -> gcdz m k = 1)).
Proof. Admitted. 