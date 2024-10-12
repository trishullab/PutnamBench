From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals derive normedtype sequences topology exp.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

(* Note: A seq formalization seems most natural, however it seems messy to define the complement of s in score, so we omit that requirement which follows from the rest of the goal. *)
Variable R : realType.
Theorem putnam_2017_a4
    (N : nat)
    (score : seq 'I_11)
    (hscore : size score = N.*2)
    (hsurj : forall k : 'I_11, has (fun a => a == k) score)
    (avg_fun : seq 'I_11 -> R := fun s => (\sum_(i <- s) i%:R) / (size s)%:R)
    (havg : avg_fun score = 74/10)
    : exists s : seq 'I_11, subseq s score /\ size s = N /\ avg_fun s = 74/10.
Proof. Admitted.