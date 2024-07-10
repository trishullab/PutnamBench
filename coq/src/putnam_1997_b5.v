Require Import Nat.
Theorem putnam_1997_b5 
    (pown := fix pow_n (b n: nat) : nat :=
      match n with
      | O => 1
      | S n' => b * pow_n b n'
    end)
    : forall (n: nat), n >= 2 -> pown 2 n-1 mod n = pown 2 n-2.
Proof. Admitted.
