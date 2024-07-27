Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1962_b2
    : exists f : R -> (Ensemble nat), forall a b : R, a < b -> Strict_Included nat (f a) (f b).
Proof. Admitted.
