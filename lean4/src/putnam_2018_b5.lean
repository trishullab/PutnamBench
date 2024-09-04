import Mathlib
open BigOperators

open Function

theorem putnam_2018_b5
    (f : (Fin 2 → ℝ) → (Fin 2 → ℝ))
    (h₁ : ContDiff ℝ 1 f)
    (h₂ : ∀ x i j, 0 < fderiv ℝ f x i j)
    (h₃ : ∀ x, 0 < fderiv ℝ f x 0 0 * fderiv ℝ f x 1 1 -
      (1 / 4) * (fderiv ℝ f x 0 1 + fderiv ℝ f x 1 0) ^ 2) :
    Injective f :=
  sorry
