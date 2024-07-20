Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_b1_solution := 1.
Theorem putnam_2016_b1
    (x : nat -> R := fix x (n: nat) :=
        match n with
        | O => 1
        | S n' => ln (exp (x n') - x n')
    end)
    : Series x = putnam_2016_b1_solution.
Proof. Admitted.
