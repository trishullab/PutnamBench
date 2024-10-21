import Mathlib

noncomputable abbrev putnam_1980_a3_solution : ℝ := sorry
-- Real.pi / 4
/--
Evaluate $\int_0^{\pi/2}\frac{dx}{1+(\tan x)^{\sqrt{2}}}$.
-/
theorem putnam_1980_a3
: ∫ x in Set.Ioo 0 (Real.pi / 2), 1 / (1 + (Real.tan x) ^ (Real.sqrt 2)) = putnam_1980_a3_solution :=
sorry
