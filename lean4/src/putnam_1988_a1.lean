import Mathlib
open BigOperators

abbrev putnam_1988_a1_solution : ℝ := sorry
-- 6
theorem putnam_1988_a1
(R : Set (Fin 2 → ℝ))
(hR : R = {p : Fin 2 → ℝ | |p 0| - |p 1| ≤ 1 ∧ |p 1| ≤ 1})
: (MeasureTheory.volume R).toReal = putnam_1988_a1_solution :=
sorry
