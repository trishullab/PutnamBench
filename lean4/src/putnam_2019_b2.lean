import Mathlib
open BigOperators

open Topology Filter Set

noncomputable abbrev putnam_2019_b2_solution : ℝ := sorry
-- 8/Real.pi^3
theorem putnam_2019_b2
(a : ℕ → ℝ)
(ha : a = fun n : ℕ => ∑ k : Icc (1 : ℤ) (n - 1),
Real.sin ((2*k - 1)*Real.pi/(2*n))/((Real.cos ((k - 1)*Real.pi/(2*n))^2)*(Real.cos (k*Real.pi/(2*n))^2)))
: Tendsto (fun n : ℕ => (a n)/n^3) atTop (𝓝 putnam_2019_b2_solution) :=
sorry
