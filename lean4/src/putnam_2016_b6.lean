import Mathlib

open Polynomial Filter Topology Real Set Nat List

abbrev putnam_2016_b6_solution : ℝ := sorry
-- 1
/--
Evaluate $\sum_{k=1}^\infty \frac{(-1)^{k-1}}{k} \sum_{n=0}^\infty \frac{1}{k2^n+1}$.
-/
theorem putnam_2016_b6 :
  ∑' k : ℕ, ((-1 : ℝ) ^ ((k + 1 : ℤ) - 1) / (k + 1 : ℝ)) * ∑' n : ℕ, (1 : ℝ) / ((k + 1) * (2 ^ n) + 1) = putnam_2016_b6_solution :=
sorry
