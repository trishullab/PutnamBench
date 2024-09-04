import Mathlib
open BigOperators

open Set Function Filter Topology

theorem putnam_1964_b1
    (a b : ℕ → ℕ)
    (h₁ : ∀ n, 0 < a n)
    (h₂ : Summable fun n ↦ (1 : ℝ) / a n)
    (h₃ : ∀ n, b n = {k | a k ≤ n}.ncard) :
    Tendsto (fun n ↦ (b n : ℝ) / n) atTop (𝓝 0) :=
  sorry
