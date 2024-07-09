import Mathlib
open BigOperators

abbrev putnam_1980_b3_solution : Set ℝ := sorry
-- {a : ℝ | a ≥ 3}
theorem putnam_1980_b3
(a : ℝ)
(u : ℕ → ℝ)
(hu : u 0 = a ∧ (∀ n : ℕ, u (n + 1) = 2 * u n - n ^ 2))
: (∀ n : ℕ, u n > 0) ↔ a ∈ putnam_1980_b3_solution :=
sorry
