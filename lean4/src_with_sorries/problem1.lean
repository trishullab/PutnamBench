import src.allimports
open BigOperators Real Nat Topology


-- Solution set of problem 1
abbrev problem_1_solution : ℝ := sorry
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
sorry
