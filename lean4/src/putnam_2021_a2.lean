import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_2021_a2_solution : ℝ := sorry
-- Real.exp 1
theorem putnam_2021_a2
(g : ℝ → ℝ)
(hg : ∀ x > 0, Tendsto (fun r : ℝ => ((x + 1) ^ (r + 1) - x ^ (r + 1)) ^ (1 / r)) (𝓝 0) (𝓝 (g x)))
: Tendsto (fun x : ℝ => g x / x) atTop (𝓝 putnam_2021_a2_solution) :=
sorry
