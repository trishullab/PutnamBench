import Mathlib
open BigOperators

open Filter Set

theorem putnam_1963_a4
    (T : (ℕ → ℝ) → (ℕ → ℝ))
    (T_def : ∀ a n, T a n = n * ((1 + a (n + 1)) / a n - 1))
    (P : (ℕ → ℝ) → ℝ → Prop)
    (P_def : ∀ a C, P a C ↔ C ≤ limsup (T a) atTop ∨ ¬ BddAbove (range (T a))) :
    (∀ a, (∀ n, 0 < a n) → P a 1) ∧ (∀ C > 1, ∃ a, (∀ n, 0 < a n) ∧ ¬ P a C) := by
  sorry
