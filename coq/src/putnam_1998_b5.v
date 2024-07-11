Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1998_b5_solution : nat := 1.
Theorem putnam_1998_b5
    (N := sum_n (fun i => 10^i) 1998)
    : Z.to_nat (floor (10^1000 * sqrt N)) mod 10 = putnam_1998_b5_solution.
Proof. Admitted.
