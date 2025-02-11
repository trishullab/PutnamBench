import src.allimports
open BigOperators Real Nat Topology


-- Solution set of problem 1
abbrev problem_3_solution : Set (ℝ × ℝ) := {p | ∃ (a : ℝ), p = (a, a) ∧ 0 < a}
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
by
-- Subtract the two equations:
-- (x² + 1) - (y² + 1) = 2y - 2x  ⟹  x² - y² = 2 (y - x)
have h1' : x^2 = 2*y - 1 := by linarith
have h2' : y^2 = 2*x - 1 := by linarith
clear h₁ h₂
-- subtract the two equations
have h_diff : x^2 - y^2 = 2 * (y - x) := by
  rw [h1', h2']
  ring
-- factorize the left hand side
have h_fact : (x - y) * (x + y) = 2 * (y - x) := by rw [← h_diff]; ring
-- rewrite (y - x) as -(x - y)
have h_fact' : (x - y) * (x + y) = -2 * (x - y) := by rw [h_fact]; ring
clear h_diff h_fact
set x_minus_y := x - y
-- two cases: x - y = 0 or x - y ≠ 0
have h_cases : x_minus_y = 0 ∨ x_minus_y ≠ 0 := by apply Classical.em
cases h_cases
rename_i x_eq_y
-- x - y = 0 ⟹ x = y
have h_eq : x = y := by exact sub_eq_zero.mp x_eq_y
-- divide the two equations by (x - y)
rw [h_eq]
use (y, y)
simp [h₀]
rename_i x_neq_y
-- x - y ≠ 0 ⟹ x ≠ y
-- divide h_fact' by (x - y)
have h_div : x + y = -2 := by
  rw [mul_comm] at h_fact'
  exact (mul_left_inj' x_neq_y).mp h_fact'
clear h_fact'
-- prove that x + y = -2 is impossible for positive x and y
have h_contra' : 0 < x + y := by
  rw [h_div]
  linarith
linarith
