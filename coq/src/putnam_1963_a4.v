Require Import Reals. From Coquelicot Require Import Rbar Lim_seq.
Theorem putnam_1963_a4
    (apos : (nat -> R) -> Prop := fun a : nat -> R => forall n : nat, a n > 0)
    (f : (nat -> R) -> nat -> R := fun a : nat -> R => fun n : nat => (INR n) * (((1 + a (S n)) / (a n)) - 1))
    : ((forall a : nat -> R, apos a -> LimSup_seq (f a) >= 1) /\ ~(exists c : R, c > 1 /\ forall a : nat -> R, apos a -> LimSup_seq (f a) >= c)).
Proof. Admitted.