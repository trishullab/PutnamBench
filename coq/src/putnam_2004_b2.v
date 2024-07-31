Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_2004_b2
    (m n : nat)
    (mnpos : gt m 0 /\ gt n 0)
    : INR (fact (m + n)) / INR (m + n) ^ (m + n) < INR (fact m) / INR m ^ m * INR (fact n) / INR n ^ n.
Proof. Admitted.
