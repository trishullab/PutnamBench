import Mathlib

noncomputable abbrev putnam_2018_a3_solution : ℝ := sorry
-- 480/49
/--
Determine the greatest possible value of $\sum_{i=1}^{10} \cos(3x_i)$ for real numbers $x_1, x_2, \ldots, x_{10}$ satisfying $\sum_{i=1}^{10} \cos(x_i) = 0$.
-/
theorem putnam_2018_a3 :
    IsGreatest
      {∑ i, Real.cos (3 * x i) | (x : Fin 10 → ℝ) (hx : ∑ i, Real.cos (x i) = 0)}
      putnam_2018_a3_solution :=
  sorry
