import Mathlib
open BigOperators

open Nat Set

noncomputable abbrev putnam_2005_a5_solution : ℝ := sorry
-- Real.pi * (Real.log 2) / 8
theorem putnam_2005_a5 : ∫ x in (0:ℝ)..1, (Real.log (x+1))/(x^2 + 1) = putnam_2005_a5_solution :=
sorry
