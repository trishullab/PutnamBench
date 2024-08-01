Require Import Nat.
Theorem putnam_1997_b5
    (powm := fix pow_m (b m: nat) : nat :=
      match m with
      | O => 1
      | S m' => b ^ (pow_m b m')
    end)
    (n : nat)
    (hn : n >= 2)
    : (powm 2 n) mod n = (powm 2 (n-1)) mod n.
Proof. Admitted.
