import Mathlib
open BigOperators

open Filter Topology Metric

-- Note: This is done assuming that the series converges, otherwise it is unclear in which order to sum. The problem statement assumes convergence.
noncomputable abbrev putnam_1999_a4_solution : ℝ := sorry
-- 9/32
theorem putnam_1999_a4
: Tendsto (fun i => ∑ m in Finset.range i, ∑' n : ℕ, (((m + 1)^2*(n+1))/(3^(m + 1) * ((n+1)*3^(m + 1) + (m + 1)*3^(n+1))) : ℝ)) atTop (𝓝 putnam_1999_a4_solution) :=
sorry
