import Mathlib
open BigOperators

open Nat

noncomputable abbrev putnam_2023_a3_solution : ℝ := sorry
-- Real.pi / 2
theorem putnam_2023_a3
: sInf {r > 0 | ∃ f g : ℝ → ℝ, Differentiable ℝ f ∧ Differentiable ℝ g ∧
f 0 > 0 ∧ g 0 = 0 ∧ (∀ x : ℝ, |deriv f x| ≤ |g x| ∧ |deriv g x| ≤ |f x|) ∧ f r = 0} = putnam_2023_a3_solution :=
sorry
