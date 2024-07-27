Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2003_b1_solution := False.
Theorem putnam_2003_b1
    (p : (nat -> R) -> R -> nat -> R := fun coeff x n => sum_n (fun i => coeff i * x ^ i) n)
    : (exists (coeffa coeffb coeffc coeffd: nat -> R) (na nb nc nd: nat), forall (x y: R),
    1 + x * y + x ^ 2 * y ^ 2 = (p coeffa x na) * (p coeffc y nc) + (p coeffb x nb) * (p coeffd y nd))
    <-> putnam_2003_b1_solution.
Proof. Admitted.
