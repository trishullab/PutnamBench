import Mathlib
open BigOperators

open Set

-- Note: uses (ℝ → ℝ) instead of (Icc 0 1 → ℝ)
abbrev putnam_1964_a2_solution : ℝ → Set (ℝ → ℝ) := sorry
-- fun _ ↦ ∅
theorem putnam_1964_a2
(α : ℝ)
: (putnam_1964_a2_solution α = {f : ℝ → ℝ | (∀ x ∈ Icc 0 1, f x > 0) ∧ ContinuousOn f (Icc 0 1) ∧ ∫ x in (0)..1, f x = 1 ∧ ∫ x in (0)..1, x * f x = α ∧ ∫ x in (0)..1, x^2 * f x = α^2}) :=
sorry
