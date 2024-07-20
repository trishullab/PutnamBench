Require Import Ensembles Reals Coquelicot.Coquelicot.
Definition putnam_1968_a5_solution : R := 8.
Theorem putnam_1968_a5
    (V : Ensemble (R -> R) := (fun P : R -> R => (exists a b c : R, P = (fun x : R => a * x ^ 2 + b * x + c)) /\ (forall x : R, (0 <= x /\ x <= 1) -> abs (P x) <= 1)))
    : (exists P : R -> R, V P /\ abs (Derive P 0) = putnam_1968_a5_solution) /\ (forall P : R -> R, V P -> abs (Derive P 0) <= putnam_1968_a5_solution).
Proof. Admitted.
