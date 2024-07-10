Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2004_b5_solution := 2 / exp 1.
Theorem putnam_2004_b5
    (prodn := fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end)
    : filterlim (fun x => (Lim_seq (fun nInc => prodn (fun n => Rpower ((1 + x ^ (n + 1)) / (1 + x ^ n)) (x ^ n) ) nInc))) (at_left 1) (locally 0).
Proof. Admitted.
