import Mathlib
open BigOperators

abbrev putnam_2015_a3_solution : ℂ := sorry
-- 13725
theorem putnam_2015_a3
: Complex.log (∏ a : Fin 2015, ∏ b : Fin 2015, (1 + Complex.exp (2 * Real.pi * Complex.I * (a.1 + 1) * (b.1 + 1) / 2015))) / Complex.log 2 = putnam_2015_a3_solution :=
sorry
