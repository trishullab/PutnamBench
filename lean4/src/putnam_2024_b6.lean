import Mathlib

open Real Filter Topology Set

abbrev putnam_2024_b6_solution : ℝ := sorry
theorem putnam_2024_b6
  (F : ℝ → ℝ → ℝ)
  (F_def : ∀ a x, (0 ≤ x ∧ x < 1) → F a x = ∑' (n : ℕ+), (n : ℝ) ^ a * exp (2 * n) * x ^ ((n : ℕ) ^ 2)) :
  ∀ a : ℝ,
    (a < putnam_2024_b6_solution →
      Tendsto (λ x ↦ F a x * exp (-1/(1-x))) (𝓝[<] 1) (𝓝 0)) ∧
    (a > putnam_2024_b6_solution →
      Tendsto (λ x ↦ F a x * exp (-1/(1-x))) (𝓝[<] 1) atTop) :=
sorry
