Require Import ZArith.
Theorem putnam_1972_a5
    (n : nat)
    (hn : n > 1)
    : (~Nat.divide n (2 ^ n - 1)).
Proof. Admitted.