import Mathlib
open BigOperators

open Topology Filter Polynomial Set

abbrev putnam_2001_b3_solution : ℝ := sorry
-- 3
theorem putnam_2001_b3
: ∑' n : Set.Ici 1, ((2 : ℝ) ^ (round (Real.sqrt n)) + (2 : ℝ) ^ (-round (Real.sqrt n))) / 2 ^ (n : ℝ) = putnam_2001_b3_solution :=
sorry
