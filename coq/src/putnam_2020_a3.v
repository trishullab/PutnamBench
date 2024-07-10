Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a3_solution := False.
Theorem putnam_2020_a3 
    (a : nat -> R := fix a (n: nat) := 
        match n with
        | O => PI / 2
        | S n' => sin (a n')
    end)
    : ex_lim_seq (fun n => (a n) ^ 2) <-> putnam_2020_a3_solution.
Proof. Admitted.
