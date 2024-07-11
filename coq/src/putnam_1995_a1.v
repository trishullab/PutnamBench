Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_a1
    (S T U : Ensemble R)
    (hS : forall a : R, forall b : R, In _ S a /\ In _ S b -> In _ S (a * b))
    (hsub : Included _ T S /\ Included _ U S)
    (hunion : Same_set _ (Union _ T U) S)
    (hdisj : Disjoint _ T U)
    (hT3 : forall a b c : R, In _ T a /\ In _ T b /\ In _ T c -> In _ T (a * b * c))
    (hS3 : forall a b c : R, In _ S a /\ In _ S b /\ In _ S c -> In _ S (a * b * c))
    : (forall a b : R, In _ T a /\ In _ T b -> In _ T (a * b)) \/ (forall a b : R, In _ U a /\ In _ U b -> In _ U (a * b)).
Proof. Admitted.
