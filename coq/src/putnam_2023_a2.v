From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2023_a2_solution : nat -> set R := fun n => [set x | x = -1 / (n`!)%:R \/ x = 1 / (n`!)%:R].
Theorem putnam_2023_a2
    (n : nat)
    (hn0 : gt n 0 /\ ~~ odd n)
    (p : {poly R})
    (hp : p \is monic /\ size p = (n.*2).+1)
    (S : set R := [set x | exists k : int, x = k%:~R /\ 1 <= `|k| <= n])
    (hpinv : forall k : int, k%:~R \in S -> p.[1 / k%:~R] = k%:~R ^+ 2)
    : [set x | (p.[1 / x] == x ^+ 2) && (x \notin S)] = putnam_2023_a2_solution n.
Proof. Admitted.
