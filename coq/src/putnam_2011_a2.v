Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a2_solution := 3 / 2.
Theorem putnam_2011_a2
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    (a: nat -> R)
    (B := fix b (n: nat) :=
        match n with
        | O => 1
        | S n' => b n' * a n - 2
    end)
    (M: nat)
    : (forall (n: nat), a n > 0 /\ B n > 0 /\ -1 * INR M <= B n <= INR M) -> Series (fun n => prodn a n) = putnam_2011_a2_solution.
Proof. Admitted.
