import Mathlib

open Filter Topology

noncomputable abbrev putnam_1991_a5_solution : ℝ := sorry
-- 1 / 3
/--
Find the maximum value of $\int_0^y \sqrt{x^4+(y-y^2)^2}\,dx$ for $0 \leq y \leq 1$.
-/
theorem putnam_1991_a5
  (f : Set.Icc (0 : ℝ) 1 → ℝ)
  (hf : ∀ y : Set.Icc 0 1, f y = ∫ x in Set.Ioo 0 y, Real.sqrt (x ^ 4 + (y - y ^ 2) ^ 2)) :
  IsGreatest (f '' (Set.Icc 0 1)) putnam_1991_a5_solution :=
sorry
