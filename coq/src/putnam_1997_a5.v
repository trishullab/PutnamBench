Require Import Nat Ensembles Finite_sets List Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1997_a5_solution := True.
Theorem putnam_1997_a5
    (E: Ensemble (list nat) := fun l => length l = 10%nat /\ sum_n (fun i => 1/ INR (nth i l 0%nat)) 10 = 1)
    (m: nat)
    : cardinal (list nat) E m /\ odd m = true <-> putnam_1997_a5_solution.
Proof. Admitted.
