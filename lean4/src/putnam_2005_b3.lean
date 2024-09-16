import Mathlib
open BigOperators

open Nat Set

abbrev putnam_2005_b3_solution : Set (ℝ → ℝ) := sorry
-- {f : ℝ → ℝ | ∃ᵉ (c > 0) (d > (0 : ℝ)), (d = 1 → c = 1) ∧ (Ioi 0).EqOn f (fun x ↦ c * x ^ d)}
theorem putnam_2005_b3
    (f : ℝ → ℝ)
    (hf : ∀ x > 0, 0 < f x)
    (hf' : DifferentiableOn ℝ f (Ioi 0)) :
    (∃ a > 0, ∀ x > 0, deriv f (a / x) = x / f x) ↔ f ∈ putnam_2005_b3_solution :=
  sorry
