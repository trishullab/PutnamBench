import Mathlib
open BigOperators

open Filter Topology

noncomputable abbrev putnam_1997_a3_solution : ℝ := sorry
-- Real.sqrt (Real.exp 1)
theorem putnam_1997_a3
(series1 : ℝ → ℝ := fun x => ∑' n : ℕ, (-1)^n * x^(2*n + 1)/(∏ i : Finset.range n, 2 * ((i : ℝ) + 1)))
(series2 : ℝ → ℝ := fun x => ∑' n : ℕ, x^(2*n)/(∏ i : Finset.range n, (2 * ((i : ℝ) + 1))^2))
: Tendsto (fun t => ∫ x in Set.Icc 0 t, series1 x * series2 x) atTop (𝓝 (putnam_1997_a3_solution)) :=
sorry
