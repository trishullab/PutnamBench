Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1978_a5
    (mu : (nat -> R) -> nat -> R := fun a : nat -> R => fun n : nat => (sum_n a n)/(INR n))
    (wrapper_a : (nat -> R) -> nat -> R := fun a i => sin (a i) / (a i))
    : forall (a: nat -> R) (n i: nat), 0 <= INR i < INR n /\ 0 < a i < PI ->
    fold_right Rmult 1%R (map (wrapper_a a) (List.seq 0 n)) <= ((sin (mu a n))/(mu a n))^n.
Proof. Admitted.
