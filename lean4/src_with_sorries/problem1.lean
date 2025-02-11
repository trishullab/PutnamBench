import src.allimports
open BigOperators Real Nat Topology


-- Solution set of problem 1
abbrev problem_1_solution : ℝ := 0
-- answer is 0
/--
Find real number $x$ that satisfy the following system of equations:
\begin{align*}
x + π &= 2y, \\
y - π/2  &= 5x. \\
\end{align*}
-/
theorem problem_1
  (x y : ℝ)
  (h₁ : x + π = 2 * y)
  (h₂ : y - π / 2 = 5 * x):
  x = problem_1_solution :=
by
-- subtract the two equations
-- (x + π) - (y - π/2) = 2y - 5x  ⟹  x + π - y + π/2 = 2y - 5x
have h_y : y = (x + π) / 2 := by
  rw [h₁]
  ring
-- substitute y in the second equation
rw [h_y] at h₂
clear h_y
ring_nf at h₂
simp at h₂
cases h₂
rename_i impossible
linarith
rename_i x_eq_0
simp [x_eq_0]
