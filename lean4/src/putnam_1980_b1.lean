import Mathlib
open BigOperators

abbrev putnam_1980_b1_solution : Set ℝ := sorry
-- {c : ℝ | c ≥ 1 / 2}
theorem putnam_1980_b1
(c : ℝ)
: (∀ x : ℝ, (Real.exp x + Real.exp (-x)) / 2 ≤ Real.exp (c * x ^ 2)) ↔ c ∈ putnam_1980_b1_solution :=
sorry
