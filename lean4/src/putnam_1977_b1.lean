import Mathlib
open BigOperators

open RingHom Set Nat Filter Topology

noncomputable abbrev putnam_1977_b1_solution : ℝ := sorry
-- 2 / 3
theorem putnam_1977_b1
: Tendsto (fun N ↦ ∏ n in Finset.Icc (2 : ℤ) N, ((n : ℝ) ^ 3 - 1) / (n ^ 3 + 1)) atTop (𝓝 putnam_1977_b1_solution) :=
sorry
