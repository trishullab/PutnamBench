Require Import Reals.
Open Scope R.
Theorem putnam_1967_b2
    (p r : R)
    (A B C alpha beta gamma : R)
    (prbound : 0 <= p <= 1 /\ 0 <= r <= 1)
    (id1 : forall x y : R, (p * x + (1 - p) * y) ^ 2 = A * x ^ 2 + B * x * y + C * y ^ 2)
    (id2 : forall x y : R, (p * x + (1 - p) * y) * (r * x + (1 - r) * y) = alpha * x ^ 2 + beta * x * y + gamma * y ^ 2)
    : (Rmax (Rmax A B) C >= 4/9 /\ Rmax (Rmax alpha beta) gamma >= 4/9).
Proof. Admitted.