Require Import Nat List Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_2003_a1_solution (n: nat) := n.
Theorem putnam_2003_a1
    (n: nat)
    (hn : n > 0)
    (E: Ensemble (list nat) := fun l => forall (i j: nat), i < length l /\ j < length l /\ i < j -> nth i l 0 <= nth j l 0 /\ fold_left add l 0 = n)
    : cardinal (list nat) E (putnam_2003_a1_solution n).
Proof. Admitted.
