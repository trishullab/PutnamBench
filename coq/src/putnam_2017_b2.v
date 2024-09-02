From mathcomp Require Import all_ssreflect all_algebra.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Definition putnam_2017_b2_solution : nat := 16.
Theorem putnam_2017_b2 :
    let seq (a : int) (k : nat) := \sum_(0 <= i < k) (a + i%:Z) in
    let valid (a : int) := a > 0 /\ (forall (b : int) (k : nat), b > 0 -> gt k 1 -> seq a 2017%nat = seq b k -> k = 2017%nat) in
    valid putnam_2017_b2_solution /\ (forall a, valid a -> a >= putnam_2017_b2_solution%:Z).
Proof. Admitted.
