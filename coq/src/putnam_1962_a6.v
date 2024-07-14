Require Import Ensembles QArith.
Theorem putnam_1962_a6
    (SS : Ensemble Q)
    (hSSadd : forall a b : Q, (SS a /\ SS b) -> SS (a + b))
    (hSSprod : forall a b : Q, (SS a /\ SS b) -> SS (a * b))
    (hSScond : forall r : Q, (SS r \/ SS (-r) \/ r = 0) /\ ~(SS r \/ SS (-r)) /\ ~(SS r /\ r = 0) /\ ~(SS (-r) /\ r = 0))
    : SS = (fun r : Q => r > 0).
Proof. Admitted.
