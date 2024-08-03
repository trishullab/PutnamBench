import Mathlib
open BigOperators

open Set

noncomputable abbrev putnam_2006_b5_solution : ℝ := sorry
-- 1 / 16
theorem putnam_2006_b5
(I J : (ℝ → ℝ) → ℝ)
(hI : I = fun f ↦ ∫ x in (0)..1, x ^ 2 * (f x))
(hJ : J = fun f ↦ ∫ x in (0)..1, x * (f x) ^ 2)
(max : ℝ)
(heqmax : ∃ f : ℝ → ℝ, ContinuousOn f (Icc 0 1) ∧ I f - J f = max)
(hmaxub : ∀ f : ℝ → ℝ, ContinuousOn f (Icc 0 1) → I f - J f ≤ max)
: (max = putnam_2006_b5_solution) :=
sorry
