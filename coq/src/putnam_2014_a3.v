Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2014_a3_solution := 3 / 7.
Theorem putnam_2014_a3
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    (A := fix a (n: nat) :=
        match n with
        | O => 5 / 2
        | S n' => (a n') ^ 2 - 2
    end)
    : Lim_seq (fun n => prodn (fun k => 1 - 1 / A k) n) = putnam_2014_a3_solution.
Proof. Admitted.
