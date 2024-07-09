import Mathlib
open BigOperators

abbrev putnam_2010_a2_solution : Set (ℝ → ℝ) := sorry
-- {f : ℝ → ℝ | ∃ c d : ℝ, ∀ x : ℝ, f x = c*x + d}
theorem putnam_2010_a2
: {f : ℝ → ℝ | Differentiable ℝ f ∧
∀ x : ℝ, ∀ n : ℤ, n > 0 → deriv f x = (f (x + n) - f x)/n} = putnam_2010_a2_solution :=
sorry
