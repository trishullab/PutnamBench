Require Import ZArith Znumtheory Ensembles.
Theorem putnam_1966_b2
    (S : Z -> Ensemble Z := fun n : Z => fun x : Z => Z.le n x /\ Z.le x (n + 9))
    : forall n : Z, Z.gt n 0 -> (exists k : Z, In _ (S n) k /\ (forall m : Z, In _ (S n) m -> k <> m -> Zis_gcd k m 1)).
Proof. Admitted.
