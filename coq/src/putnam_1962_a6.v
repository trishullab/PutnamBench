Require Import Ensembles QArith.
Theorem putnam_1962_a6
    (A : Ensemble Q)
    (hSSadd : forall a b : Q, (A a /\ A b) -> A (a + b))
    (hSSprod : forall a b : Q, (A a /\ A b) -> A (a * b))
    (hSScond : forall r : Q, (A r \/ A (-r) \/ r = 0) /\ ~(A r \/ A (-r)) /\ ~(A r /\ r = 0) /\ ~(A (-r) /\ r = 0))
    : A = (fun r : Q => r > 0).
Proof. Admitted.