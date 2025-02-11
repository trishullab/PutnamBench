import src.allimports
open BigOperators Real Nat Topology


-- Solution set of problem 1
abbrev problem_3_solution : Set (ℝ × ℝ) := sorry
-- all pairs of the form (a, a) where a > 0 i.e. {p | ∃ (a : ℝ), p = (a, a) ∧ 0 < a}
/--
Find all pairs of positive real numbers $(x, y)$ that satisfy the following system of equations:
\begin{align*}
x^2 + 1 &= 2y, \\
y^2 + 1 &= 2x. \\
\end{align*}
-/
theorem problem_3
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x^2 + 1 = 2 * y)
  (h₂ : y^2 + 1 = 2 * x):
  ∃ tup : ℝ × ℝ, tup = (x, y) ∧ tup ∈ problem_3_solution :=
sorry
