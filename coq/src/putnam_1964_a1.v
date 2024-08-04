Section putnam_1964_a1.
Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Theorem putnam_1964_a1
    (A : Ensemble (R * R))
    (hAcard : cardinal (R * R) A 6)
    (dists : Ensemble R := fun d => exists a b : R * R, In (R * R) A a /\ In (R * R) A b /\ a <> b /\ d = dist_euc (fst a) (snd a) (fst b) (snd b))
    (max min : R)
    (hmax : In R dists max /\ forall d : R, d > max -> ~In R dists d)
    (hmin : In R dists min /\ forall d : R, d < min -> ~In R dists d)
    : max / min >= sqrt 3.
Proof. Admitted.
End putnam_1964_a1.