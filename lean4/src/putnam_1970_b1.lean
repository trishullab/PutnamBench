import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

noncomputable abbrev putnam_1970_b1_solution : ℝ := sorry
-- Real.exp (2 * Real.log 5 - 4 + 2 * Real.arctan 2)
theorem putnam_1970_b1
: Tendsto (fun n => 1/(n^4) * ∏ i in Finset.Icc (1 : ℤ) (2*n), ((n^2 + i^2) : ℝ)^((1 : ℝ)/n)) atTop (𝓝 putnam_1970_b1_solution) :=
sorry
