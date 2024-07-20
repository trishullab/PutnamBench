Require Import Nat List Coquelicot.Coquelicot.
Theorem putnam_2005_a1
    : forall (n: nat), n > 0 -> exists (l: list nat), forall (p q: nat), In p l /\ In q l -> exists (r1 s1 r2 s2: nat), p = 2 ^ r1 * 3 ^ s1 /\ q = 2 ^ r2 * 3 ^ s2 /\ p mod q <> 0 /\ q mod p <> 0.
Proof. Admitted.
