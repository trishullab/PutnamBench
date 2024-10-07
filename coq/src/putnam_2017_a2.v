From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_2017_a2
    (Q : nat -> R -> R)
    (hQbase : forall x : R, Q 0%nat x = 1 /\ Q 1%nat x = x)
    (hQn : forall n : nat, ge n 2 -> forall x : R, Q n x = ((Q (n.-1) x) ^+ 2 - 1) / (Q (n.-2) x))
    : forall n : nat, gt n 0 -> 
        exists P : {poly R}, 
            size P = n.+1 /\ 
            (forall i : nat, exists c : int, P`_i = c%:~R) /\
            Q n = (fun x : R => P.[x]).
Proof. Admitted.