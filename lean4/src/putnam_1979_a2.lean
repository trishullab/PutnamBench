import Mathlib
open BigOperators

abbrev putnam_1979_a2_solution : ℝ → Prop := sorry
-- fun k : ℝ => k ≥ 0
theorem putnam_1979_a2
: ∀ k : ℝ, (∃ f : ℝ → ℝ, Continuous f ∧ ∀ x : ℝ, f (f x) = k*x^9) ↔ putnam_1979_a2_solution k :=
sorry
