From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1976_b5_solution : nat -> R -> R := fun n => (fun x => (n `!)%:R).
Theorem putnam_1976_b5
: forall (n : nat) (x : R), \sum_(0 <= k < n.+1) ((-1) ^+ k * 'C(n, k)%:R * (x - k%:R) ^+ n) = putnam_1976_b5_solution n x.
Proof. Admitted.
