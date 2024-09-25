From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals topology normedtype.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Theorem putnam_1964_a6 
    (T : set R)
    (pairs : set (R * R) := [set p : R * R | p.1 \in T /\ p.2 \in T /\ p.1 < p.2])
    (distance : (R * R) -> R := fun p => p.2 - p.1)
    (hrepdist : forall p : R * R, p \in pairs ->
        (exists m : R * R, m \in pairs /\ distance m > distance p) ->
        (exists q : R * R, q \in pairs /\ q <> p /\ distance p = distance q))
    : forall p q : R * R, (p \in pairs /\ q \in pairs /\ q <> p) ->
        exists n d : int, d <> 0 /\ distance p / distance q = (n%:~R)/(d%:~R).
Proof. Admitted.