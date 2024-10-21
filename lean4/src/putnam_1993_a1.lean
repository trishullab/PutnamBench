import Mathlib

noncomputable abbrev putnam_1993_a1_solution : ℝ := sorry
-- 4 / 9
/--
The horizontal line $y=c$ intersects the curve $y=2x-3x^3$ in the first quadrant as in the figure. Find $c$ so that the areas of the two shaded regions are equal. [Figure not included. The first region is bounded by the $y$-axis, the line $y=c$ and the curve; the other lies under the curve and above the line $y=c$ between their two points of intersection.]
-/
theorem putnam_1993_a1
: 0 < putnam_1993_a1_solution ∧ putnam_1993_a1_solution < (4 * Real.sqrt 2) / 9 ∧ (∫ x in Set.Ioo 0 ((Real.sqrt 2) / 3), max (putnam_1993_a1_solution - (2 * x - 3 * x ^ 3)) 0) = (∫ x in Set.Ioo 0 ((Real.sqrt 6) / 3), max ((2 * x - 3 * x ^ 3) - putnam_1993_a1_solution) 0) :=
sorry
