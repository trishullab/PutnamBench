From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import multiset.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope mset_scope.

(* Note: The documentation in finmap/multisets.v appears to contain a typo, `mset n a` is not defined, though `msetn n a` seems to do the intended thing. *)
Definition putnam_1979_a1_solution : {mset nat} := 2 |` (msetn 659 3).
Theorem putnam_1979_a1
    (P : {mset nat} -> Prop)
    (hP : forall A : {mset nat}, P A <-> ((exists a : nat, a \in A) /\ (forall i : nat, i \in A -> i > 0) /\ (\sum_(j <- A) j = 1979)))
    : P putnam_1979_a1_solution /\ (forall A : {mset nat}, P A -> \prod_(j <- putnam_1979_a1_solution) j >= \prod_(j <- A) j). 
Proof. Admitted.
