From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope classical_set_scope.

Definition putnam_1998_a4_solution : set nat := [set n | n = 1 %[mod 6]].
Theorem putnam_1998_a4
    (A : nat -> list nat)
    (hA1 : A 1 = [:: 0])
    (hA2 : A 2 = [:: 1])
    (hA : forall n, gt n 0 -> A (n.+2) = A (n.+1) ++ A n) 
    (of_digits : list nat -> nat := fun L => foldl (fun x y => 10 * y + x) 0 L)
    : [set n : nat | ge n 1 /\ 11 %| of_digits (A n)] = putnam_1998_a4_solution.
Proof. Admitted.