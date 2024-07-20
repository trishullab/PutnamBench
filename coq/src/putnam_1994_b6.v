Require Import Nat.
Theorem putnam_1994_b6
    (n : nat -> nat := fun a => 101 * a -  100 * pow 2 a)
    : forall a b c d : nat, 0 <= a <= 99 /\ 0 <= b <= 99 /\  0 <= c <= 99 /\  0 <= d <= 99 /\ n a + n b mod 10100 = n c + n d ->
    (a,b) = (c,d).
Proof. Admitted.
