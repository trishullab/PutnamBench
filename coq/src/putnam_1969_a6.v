Section putnam_1969_a6.
Require Import Reals. From Coquelicot Require Import Hierarchy.
Theorem putnam_1969_a6
    (x : nat -> R)
    (y : nat -> R)
    (hy1 : forall n : nat, ge n 2 -> y n = x (Nat.sub n 1) + 2 * (x n))
    (hy2 : exists c : R, filterlim y eventually (locally c))
    : exists C : R, filterlim x eventually (locally C).
Proof. Admitted.
End putnam_1969_a6.
