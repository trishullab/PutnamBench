Require Import Reals Ensembles Coquelicot.Coquelicot.
Theorem putnam_1995_a1
    (E T U : Ensemble R)
    (hE : forall a : R, forall b : R, In _ E a /\ In _ E b -> In _ E (a * b))
    (hsub : Included _ T E /\ Included _ U E)
    (hunion : Same_set _ (Union _ T U) E)
    (hdisj : Disjoint _ T U)
    (hT3 : forall a b c : R, In _ T a /\ In _ T b /\ In _ T c -> In _ T (a * b * c))
    (hU3 : forall a b c : R, In _ U a /\ In _ U b /\ In _ U c -> In _ U (a * b * c))
    : (forall a b : R, In _ T a /\ In _ T b -> In _ T (a * b)) \/ (forall a b : R, In _ U a /\ In _ U b -> In _ U (a * b)).
Proof. Admitted.
