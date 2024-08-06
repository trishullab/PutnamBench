import Mathlib
open BigOperators

open Topology Filter Polynomial

abbrev putnam_1963_b2_solution : Prop := sorry
-- True
theorem putnam_1963_b2
(S : Set ℝ)
(hS : S = {2 ^ m * 3 ^ n | (m : ℤ) (n : ℤ)})
: closure S ⊇ Set.Ioi (0 : ℝ) ↔ putnam_1963_b2_solution :=
sorry
