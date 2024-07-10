Require Import Factorial Reals Coquelicot.Coquelicot.
Theorem putnam_2004_b2
    (m n: nat)
    (hm : ge m 0)
    (hn : ge n 0)
    : INR (fact (m + n)) / INR (m + n) ^ (m + n) < INR (fact m) / INR m ^ m * INR (fact n) / INR n ^ n.
Proof. Admitted.
