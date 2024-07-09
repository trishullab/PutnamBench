import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a2_solution : Prop := sorry
-- True
theorem putnam_1990_a2
(numform : ℝ → Prop)
(hnumform : ∀ x : ℝ, numform x = ∃ n m : ℕ, x = n ^ ((1 : ℝ) / 3) - m ^ ((1 : ℝ) / 3))
: (∃ s : ℕ → ℝ, (∀ i : ℕ, numform (s i)) ∧ Tendsto s atTop (𝓝 (Real.sqrt 2))) ↔ putnam_1990_a2_solution :=
sorry
