Require Import Nat Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1974_a4_solution (n: nat) := INR n * (Binomial.C (n - 1) (n / 2) - 1) / (2 ^ (n - 1)).
Theorem putnam_1974_a4
    : forall (n: nat), 1 / (2 ^ (pred n)) * sum_n (fun i => (INR n - 2 * INR (S i)) * Binomial.C n (i + 1)) (n / 2) = putnam_1974_a4_solution n.
Proof. Admitted.
