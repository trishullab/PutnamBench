Require Import Ensembles QArith.
Theorem putnam_1962_a6
    (SS : Ensemble Q)
    (hSadd : forall a b : Q, (SS a /\ SS b) -> SS (a + b))
    (hSprod : forall a b : Q, (SS a /\ SS b) -> SS (a * b))
    (hScond : forall r : Q, (SS r \/ SS (-r) \/ r = 0) /\ ~(SS r \/ SS (-r)) /\ ~(SS r /\ r = 0) /\ ~(SS (-r) /\ r = 0))
    : SS = (fun r : Q => r > 0).
Proof. Admitted.
