Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_b6
    (E : R -> Ensemble nat := fun alpha => fun x : nat => exists n : nat, ge n 1 /\ Z.of_nat x = floor (INR n * alpha))
    : ~ exists alpha beta gamma : R, alpha > 0 /\ beta > 0 /\ gamma > 0 /\ (Disjoint _ (E alpha) (E beta) /\ Disjoint _ (E beta) (E gamma) /\ Disjoint _ (E gamma) (E alpha)) /\ (Same_set _ (fun x : nat => ge x 1) (Union _ (Union _ (E alpha) (E beta)) (E gamma))).
Proof. Admitted.
