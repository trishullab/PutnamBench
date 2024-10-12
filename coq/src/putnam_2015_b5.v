From mathcomp Require Import all_algebra all_ssreflect fingroup perm.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Definition putnam_2015_b5_solution : nat := 4.
Theorem putnam_2015_b5
    (P : nat -> nat)
    (hP := forall n : nat, [set : 'I_(P n)] #= [set pi : 'S_n | forall i j : 'I_n, `|i%:Z - j%:Z| = 1 -> `|(pi i)%:Z - (pi j)%:Z| <= 2])
    : forall n : nat, ge n 2 -> (P (Nat.add n 5))%:Z - (P (Nat.add n 4))%:Z - (P (Nat.add n 3))%:Z + (P n)%:Z = putnam_2015_b5_solution.
Proof. Admitted.
