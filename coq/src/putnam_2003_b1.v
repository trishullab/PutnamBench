From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_2003_b1_solution : Prop := False.
Theorem putnam_2003_b1
    : (exists a b c d : {poly R}, forall x y : R, 1 + x * y + x ^ 2 * y ^ 2 = a.[x] * c.[y] + b.[x] * d.[y]) <-> putnam_2003_b1_solution.
Proof. Admitted.