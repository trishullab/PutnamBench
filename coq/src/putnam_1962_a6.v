Require Import Ensembles QArith.
Theorem putnam_1962_a6
    (Sset : Ensemble Q)
    (hSadd : forall a b : Q, (Sset a /\ Sset b) -> Sset (a + b))
    (hSprod : forall a b : Q, (Sset a /\ Sset b) -> Sset (a * b))
    (hScond : forall r : Q, (Sset r \/ Sset (-r) \/ r = 0) /\ ~(Sset r \/ Sset (-r)) /\ ~(Sset r /\ r = 0) /\ ~(Sset (-r) /\ r = 0))
    : Sset = (fun r : Q => r > 0).
Proof. Admitted.
