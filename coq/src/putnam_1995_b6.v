Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_b6
    (S : R -> Ensemble nat := fun alpha => (fun x : nat => exists n : nat, ge n 1 /\ INR x = IZR (floor ((INR n) * alpha))))
    : ~ exists alpha beta gamma : R, alpha > 0 /\ beta > 0 /\ gamma > 0 /\ (Disjoint _ (S alpha) (S beta) /\ Disjoint _ (S beta) (S gamma) /\ Disjoint _ (S gamma) (S alpha)) /\ (~ Same_set _ (fun x : nat => ge x 1) (Union _ (Union _ (S alpha) (S beta)) (S gamma))).
Proof. Admitted.
