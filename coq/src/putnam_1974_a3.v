From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Definition putnam_1974_a3_solution : (set nat) * (set nat) := ([set p : nat | prime p /\ p = 1 %[mod 8]], [set p : nat | prime p /\ p = 5 %[mod 8]]).
Theorem putnam_1974_a3
    (assmption : forall p : nat, ((prime p /\ gt p 2) -> ((exists m n : int, p%:Z = m ^+ 2 + n ^+ 2))) <-> p = 1 %[mod 4])
    : forall p : nat, 
        ((prime p /\ gt p 2 /\ (exists x y : int, p%:Z = x ^+ 2 + 16 * y ^+ 2)) <-> p \in fst putnam_1974_a3_solution) /\
        ((prime p /\ gt p 2 /\ (exists x y : int, p%:Z = 4 * x ^+ 2 + 4 * x * y + 5 * y ^+ 2)) <-> p \in snd putnam_1974_a3_solution).
Proof. Admitted.