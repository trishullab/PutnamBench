import Mathlib
open BigOperators

noncomputable abbrev putnam_1993_a1_solution : ℝ := sorry
-- 4 / 9
theorem putnam_1993_a1
: 0 < putnam_1993_a1_solution ∧ putnam_1993_a1_solution < (4 * Real.sqrt 2) / 9 ∧ (∫ x in Set.Ioo 0 ((Real.sqrt 2) / 3), max (putnam_1993_a1_solution - (2 * x - 3 * x ^ 3)) 0) = (∫ x in Set.Ioo 0 ((Real.sqrt 6) / 3), max ((2 * x - 3 * x ^ 3) - putnam_1993_a1_solution) 0) :=
sorry
