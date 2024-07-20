Require Import ZArith BinInt.
Theorem putnam_1967_b4
    (n : nat)
    (lockers : nat -> nat -> bool)
    (npos : n >= 1)
    (hlockers0 : forall i : nat, 1 <= i <= n -> lockers 0 i = false)
    (hlockersk : forall k i : nat, 1 <= k <= n -> 1 <= i <= n -> ((Nat.divide k i -> lockers k i = negb (lockers (k - 1) i)) /\ (~Nat.divide k i -> lockers k i = lockers (k - 1) i)))
    : (forall i : nat, 1 <= i <= n -> (lockers n i = true <-> exists j : nat, j ^ 2 = i)).
Proof. Admitted.