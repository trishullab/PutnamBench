import Mathlib
open BigOperators

open Set Nat Polynomial

abbrev putnam_1974_b1_solution : (Fin 5 → (ℝ × ℝ)) -> Prop := sorry
-- fun points => (∃ (B : ℝ) (ordering : Equiv.Perm (Fin 5)), ∀ i : Fin 5, Euclidean.dist (points (ordering i)) (points (ordering (i+1))) = B)
theorem putnam_1974_b1
(on_unit_circle : (Fin 5 → (ℝ × ℝ)) -> Prop := fun points => ∀ i : Fin 5, Euclidean.dist (points i) (0,0) = 1)
(distance_fun : (Fin 5 → (ℝ × ℝ)) -> ℝ := fun points => ∑ idx : Fin 5 × Fin 5, if idx.1 < idx.2 then Euclidean.dist (points idx.1) (points idx.2) else 0)
: ∀ points : Fin 5 → (ℝ × ℝ), on_unit_circle points → (distance_fun points = sSup {R | ∃ pts, on_unit_circle pts ∧ R = distance_fun pts} ↔ putnam_1974_b1_solution points) :=
sorry
