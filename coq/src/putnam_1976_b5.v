Require Import Factorial Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1976_b5_solution (n: nat) : R -> R := fun x => INR (fact n).
Theorem putnam_1976_b5
    : forall (n: nat), (fun x => sum_n (fun i => (-1) ^ i * Binomial.C n i * (x - INR i) ^ n) (n + 1)) = putnam_1976_b5_solution n.
Proof. Admitted.
