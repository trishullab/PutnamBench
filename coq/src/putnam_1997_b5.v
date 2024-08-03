Require Import Nat.
Theorem putnam_1997_b5
    (tetration := fix tetration' (b m: nat) : nat :=
      match m with
      | O => 1
      | S m' => b ^ (tetration' b m')
    end)
    (n : nat)
    (hn : n >= 2)
    : (tetration 2 n) mod n = (tetration 2 (n-1)) mod n.
Proof. Admitted.
