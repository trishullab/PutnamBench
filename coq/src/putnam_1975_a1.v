Theorem putnam_1975_a1
    (a : nat -> nat -> nat -> Prop := fun m p q => 4*m + 1 = p*p + q*q)
    (b : nat -> nat -> nat -> Prop := fun m p q => m = Nat.div (p * (p+1)) 2 + Nat.div (q * (q+1)) 2)
    : forall (m: nat), (exists p q: nat, a m p q) <-> (exists p q: nat, b m p q).
Proof. Admitted.
