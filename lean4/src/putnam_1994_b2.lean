import Mathlib

open Filter Topology

abbrev putnam_1994_b2_solution : Set ℝ := sorry
-- {c : ℝ | c < 243 / 8}
/--
For which real numbers $c$ is there a straight line that intersects the curve $x^4+9x^3+cx^2+9x+4$ in four distinct points?
-/
theorem putnam_1994_b2
  (c : ℝ) :
  (∃ m b : ℝ,
    {x : ℝ | m * x + b = x ^ 4 + 9 * x ^ 3 + c * x ^ 2 + 9 * x + 4}.encard = 4)
  ↔ c ∈ putnam_1994_b2_solution :=
sorry
