Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2007_b3_solution := let a := (1 + sqrt 5) / 2 in (2 ^ 2006 / sqrt 5) * (a ^ 3997 - Rpower a (-3997)).
Theorem putnam_2007_b3
    (X := fix x (n: nat) :=
        match n with
        | O => 1
        | S n' => 3 * x n' + IZR (floor (x n' * sqrt 5))
    end)
    : X 2007%nat = putnam_2007_b3_solution.
Proof. Admitted.
