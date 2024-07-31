Require Import Ensembles QArith.
Definition putnam_2009_a4_solution := False.
Theorem putnam_2009_a4
    : (forall (E: Ensemble Q), (E 0 /\ forall (q: Q), (E q -> E (q + 1) /\ E (q - 1)) /\ (E q /\ q <> 0 /\ q <> 1 -> E (1 / (q * (q - 1))))) -> forall (q: Q), E q) <-> putnam_2009_a4_solution.
Proof. Admitted.
