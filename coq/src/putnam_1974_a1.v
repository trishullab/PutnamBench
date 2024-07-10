Require Import Nat List Ensembles Finite_sets. From mathcomp Require Import div fintype perm ssrbool.
Definition putnam_1974_a1_solution := 11.
Theorem putnam_1974_a1
    (s : list nat := seq 1 17)
    : exists (m: nat),
    ((forall (p : nat -> Prop),
    let E: Ensemble nat := fun x : nat => List.In x s /\ p x in
    ~ exists (p q r : nat), p <> q /\ q <> r /\ coprime p q /\ coprime q r /\ coprime p r /\ exists (n: nat), cardinal nat E n /\ n <= m) /\
    (exists (p : nat -> Prop), 
    let E: Ensemble nat := fun x => List.In x s /\ p x in
    ~ exists (p q r : nat), p <> q /\ q <> r /\ coprime p q /\ coprime q r /\ coprime p r /\ exists (n: nat), cardinal nat E m)) <->
    m = putnam_1974_a1_solution.
Proof. Admitted.
