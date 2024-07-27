Require Import Nat List Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_2003_a1_solution : nat -> nat := (fun n : nat => n).
Theorem putnam_2003_a1
    (n: nat)
    (hn : n > 0)
    (E: Ensemble (list nat) := fun l => fold_left add l 0 = n /\ (forall i : nat, i < length l -> nth i l 0 > 0) /\ (forall (i j: nat), i < length l /\ j < length l /\ i < j -> nth i l 0 <= nth j l 0) /\ last l 0 <= hd 0 l + 1)
    : cardinal (list nat) E (putnam_2003_a1_solution n).
Proof. Admitted.
