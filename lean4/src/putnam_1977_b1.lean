import Mathlib

open RingHom Set Nat Filter Topology

noncomputable abbrev putnam_1977_b1_solution : ℝ := sorry
-- 2 / 3
/--
Find $\prod_{n=2}^{\infty} \frac{(n^3 - 1)}{(n^3 + 1)}$.
-/
theorem putnam_1977_b1
: Tendsto (fun N ↦ ∏ n ∈ Finset.Icc (2 : ℤ) N, ((n : ℝ) ^ 3 - 1) / (n ^ 3 + 1)) atTop (𝓝 putnam_1977_b1_solution) :=
sorry
