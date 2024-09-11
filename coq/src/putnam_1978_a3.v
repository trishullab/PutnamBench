From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals measure lebesgue_integral lebesgue_measure topology normedtype exp sequences.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition mu := [the measure _ _ of @lebesgue_measure R].
Definition putnam_1978_a3_solution : nat := 2.
Theorem putnam_1978
    (p : {poly R} := 2 *: ('X^6 + 1%:P) + 4 *: ('X^5 + 'X) + 3 *: ('X^4 + 'X^2) + 5 *: 'X^3)
    (I : nat -> R := fun k => \int[mu]_(x in [set t : R | 0 <= t]) (fun x => x ^ k / p.[x]) x)
    : putnam_1978_a3_solution \in index_iota 1 5 /\ (forall k : nat, k \in index_iota 1 5 -> I putnam_1978_a3_solution <= I k).
Proof. Admitted.