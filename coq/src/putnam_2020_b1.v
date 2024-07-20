Require Import ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_2020_b1_solution := 1990.
Theorem putnam_2020_b1 
    (d : positive -> Z := fix d (n : positive) :=
        match n with
        | xH => 1
        | xO n' => d n'%positive
        | xI n' => 1 + d n'%positive
    end)
    (A := sum_n_m (fun k => IZR ((-1) ^ (d (Pos.of_nat (S k))) * (Z.of_nat k) ^ 3)) 1 2020)
    : (floor A) mod 2020 = putnam_2020_b1_solution.
Proof. Admitted.
