import Mathlib
open BigOperators

open Set Filter Topology

abbrev putnam_1988_a3_solution : Set ℝ := sorry
-- {x | x > 1 / 2}
theorem putnam_1988_a3
: ({x : ℝ | ∃ L : ℝ, Tendsto (fun t ↦ ∑ n in Finset.Icc (1 : ℕ) t, (((1 / n) / Real.sin (1 / n) - 1) ^ x)) atTop (𝓝 L)} = putnam_1988_a3_solution) :=
sorry
