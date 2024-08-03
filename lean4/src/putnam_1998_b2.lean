import Mathlib
open BigOperators

open Set Function Metric

noncomputable abbrev putnam_1998_b2_solution : ℝ → ℝ → ℝ := sorry
-- fun a b => if a > b then Real.sqrt (2*a^2 + 2*b^2) else 0
theorem putnam_1998_b2
(a b : ℝ)
(hab : 0 < b ∧ b < a)
: sInf {d : ℝ | ∃ (c : ℝ) (x : ℝ), d = Real.sqrt ((a - c)^2 + (b - 0)^2) +  Real.sqrt ((c - x)^2 + (0 - x)^2) + Real.sqrt ((a - x)^2 + (b - x)^2) ∧
  Real.sqrt ((a - c)^2 + (b - 0)^2) + Real.sqrt ((c - x)^2 + (0 - x)^2) > Real.sqrt ((a - x)^2 + (b - x)^2) ∧
  Real.sqrt ((a - c)^2 + (b - 0)^2) + Real.sqrt ((a - x)^2 + (b - x)^2) > Real.sqrt ((c - x)^2 + (0 - x)^2) ∧
  Real.sqrt ((c - x)^2 + (0 - x)^2) + Real.sqrt ((a - x)^2 + (b - x)^2) > Real.sqrt ((a - c)^2 + (b - 0)^2)}
 = putnam_1998_b2_solution a b :=
sorry
