import Mathlib

open intervalIntegral MvPolynomial Real

abbrev putnam_2009_b4_solution : ℕ := sorry
-- 2020050
/--
Say that a polynomial with real coefficients in two variables, $x,y$, is \emph{balanced} if the average value of the polynomial on each circle centered at the origin is $0$. The balanced polynomials of degree at most $2009$ form a vector space $V$ over $\mathbb{R}$. Find the dimension of $V$.
-/
theorem putnam_2009_b4
    (IsBalanced : MvPolynomial (Fin 2) ℝ → Prop)
    (IsBalanced_def : ∀ P, IsBalanced P ↔ ∀ r > 0,
      (∫ t in (0 : ℝ)..(2 * π), eval ![r * cos t, r * sin t] P) / (2 * π * r) = 0)
    (V : Submodule ℝ (MvPolynomial (Fin 2) ℝ))
    (V_def : ∀ P, P ∈ V ↔ IsBalanced P ∧ P.totalDegree ≤ 2009) :
    Module.rank ℝ V = putnam_2009_b4_solution :=
  sorry
