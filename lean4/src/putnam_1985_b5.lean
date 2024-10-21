import Mathlib

open Set Filter Topology Real Polynomial Function

noncomputable abbrev putnam_1985_b5_solution : ℝ := sorry
-- sqrt (Real.pi / 1985) * exp (-3970)
/--
Evaluate $\int_0^\infty t^{-1/2}e^{-1985(t+t^{-1})}\,dt$. You may assume that $\int_{-\infty}^\infty e^{-x^2}\,dx = \sqrt{\pi}$.
-/
theorem putnam_1985_b5
(fact : ∫ x in univ, exp (- x ^ 2) = sqrt (Real.pi))
: (∫ t in Set.Ioi 0, t ^ (- (1 : ℝ) / 2) * exp (-1985 * (t + t ^ (-(1 : ℝ)))) = putnam_1985_b5_solution) :=
sorry
