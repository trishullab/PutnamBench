Require Import Reals. From Coqtail Require Import Cpow.
Open Scope C_scope.
Theorem putnam_2018_b2
    (n : nat)
    : forall (z : C), Cnorm z <= 1 -> ~exists z,
    (fix f (n : nat) (z : C) (m : nat) : C :=
        match m with
        | O => 0
        | S m' =>
                (R_R_to_C (INR (n - m')) 0) * (z ^ m) + f n z m'
    end) n z 0%nat = 0.
Proof. Admitted.
