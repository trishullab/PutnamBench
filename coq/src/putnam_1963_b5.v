From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences normedtype topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1963_b5
    (a : int -> R)
    (haineq : forall n : int, (n >= 1) -> forall k : int, ((n <= k <= 2 * n)) -> (0 <= a k <= 100 * a n))
    (haseries : exists S : R, (fun N : nat => \sum_(0 <= n < N) a n) @ \oo --> S)
    : (fun n : nat => n%:R * a n) @ \oo --> 0.
Proof. Admitted.