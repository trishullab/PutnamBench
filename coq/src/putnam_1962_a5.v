From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Open Scope nat_scope.

Definition putnam_1962_a5_solution : nat -> nat := fun n : nat => n * (n + 1) * 2 ^ (n - 2).
Theorem putnam_1962_a5
    : forall n : nat, n >= 2 ->
        putnam_1962_a5_solution n = \sum_(1 <= k < n.+1) (binomial n k * k ^ 2).
Proof. Admitted.
