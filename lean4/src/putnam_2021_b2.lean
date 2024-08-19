import Mathlib
open BigOperators

open Filter Topology

noncomputable abbrev putnam_2021_b2_solution : ℝ := sorry
-- 2 / 3
theorem putnam_2021_b2 :
    IsGreatest
      {S | ∃ a : ℕ+ → ℝ, (∑' k, a k = 1) ∧ (∀ k, 0 ≤ a k) ∧
        S = ∑' n : ℕ+, n / 2 ^ (n : ℕ) * (∏ k in Finset.Icc 1 n, a k) ^ (1 / n : ℝ)}
      putnam_2021_b2_solution :=
  sorry
