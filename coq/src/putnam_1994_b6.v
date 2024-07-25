Require Import ZArith.
Open Scope Z_scope.
Theorem putnam_1994_b6
    (n : Z -> Z := fun a => 101 * a - 100 * 2^a)
    : forall a b c d : Z, 0 <= a <= 99 /\ 0 <= b <= 99 /\ 0 <= c <= 99 /\ 0 <= d <= 99 /\ 
    (n a + n b) mod 10100 = (n c + n d) mod 10100 -> (a = c /\ b = d) \/ (a = d /\ b = c).
Proof. Admitted.
