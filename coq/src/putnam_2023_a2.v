Require Import Nat Ensembles Factorial Reals Coquelicot.Coquelicot.
Definition putnam_2023_a2_solution : Ensemble R := fun x => exists (n: nat), x = -1 / INR (fact n) \/ x = 1 / INR (fact n).
Theorem putnam_2023_a2 
    (n : nat)
    (hn0 : gt n 0)
    (hnev : even n = true)
    (coeff: nat -> R)
    (p : R -> R := fun x => sum_n (fun i => coeff i * x ^ i) (2 * n + 1))
    (monic_even : coeff (mul 2 n) = 1)
    (hpinv : forall k : Z, and (Z.le 1 (Z.abs k)) (Z.le (Z.abs k) (Z.of_nat n)) -> p (1 / (IZR k)) = IZR (k ^ 2))
    : (fun x => (p (1 / x) = x ^ 2 /\ ~ exists k : Z, x = IZR k /\ Z.le (Z.abs k) (Z.of_nat n))) = putnam_2023_a2_solution.
Proof. Admitted.
