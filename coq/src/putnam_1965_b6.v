Require Import GeoCoq.Main.Tarski_dev.Ch16_coordinates_with_functions Ensembles.
Context `{Tarski_2D}.
Theorem putnam_1965_b6
    (A B C D : Tpoint)
    (hABCD : forall R SS P Q : Tpoint, (R <> P /\ SS <> Q /\ OnCircle A P R /\ OnCircle B P R /\ OnCircle C Q SS /\ OnCircle D Q SS) -> (exists I : Tpoint, OnCircle I P R /\ OnCircle I Q SS))
    : (Col A B C /\ Col A B D) \/ (exists R P : Tpoint, R <> P /\ OnCircle A P R /\ OnCircle B P R /\ OnCircle C P R /\ OnCircle D P R).
Proof. Admitted.
End putnam_1965_b6.
