import Mathlib
open BigOperators

open Topology Filter Set Polynomial Function

abbrev putnam_1981_b1_solution : ℝ := sorry
-- -1
theorem putnam_1981_b1
(f : ℕ → ℝ)
(hf : f = fun n : ℕ => ((1 : ℝ)/n^5) * ∑ h in Finset.Icc 1 n, ∑ k in Finset.Icc 1 n, (5*(h : ℝ)^4 - 18*h^2*k^2 + 5*k^4))
: Tendsto f atTop (𝓝 putnam_1981_b1_solution) :=
sorry
