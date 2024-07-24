Require Import Reals Binomial Factorial Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1992_a2_solution := 1992.
Theorem putnam_1992_a2
    (C : R -> R := fun a => (Derive_n (fun x => Rpower (1 + x) a) 1992) 0 / INR (fact 1992))
    : RInt (fun y => C (-y - 1) * sum_n_m (fun k => 1 / (y + INR k)) 1 1992) 0 1 = putnam_1992_a2_solution.
Proof. Admitted.
