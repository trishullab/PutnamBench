import Mathlib
open BigOperators

open Matrix Function

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (-1 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_2012_a3_solution : ℝ → ℝ := sorry
-- fun x : ℝ => Real.sqrt (1 - x^2)
theorem putnam_2012_a3
(S : Set ℝ := Set.Icc (-1 : ℝ) 1)
(hf : (ℝ → ℝ) → Prop := fun f : ℝ → ℝ => ContinuousOn f S ∧
(∀ x ∈ S, f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) ∧ f 0 = 1 ∧
(∃ y : ℝ, leftLim (fun x : ℝ => (f x)/Real.sqrt (1 - x)) 1 = y))
: hf putnam_2012_a3_solution ∧ ∀ f : ℝ → ℝ, hf f → ∀ x ∈ S, f x = putnam_2012_a3_solution x :=
sorry
