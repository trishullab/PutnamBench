Require Import Reals Coquelicot.Coquelicot Ensembles Finite_sets.
Definition putnam_1973_a4_solution : nat := 3.
Theorem putnam_1973_a4
    (f : R -> R := fun x => (Rpower 2 x - 1 - x^2))
    : let zeroset (x : R) : Prop := f x = 0 in 
        cardinal R zeroset putnam_1973_a4_solution.
Proof. Admitted.
