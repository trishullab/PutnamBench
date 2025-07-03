import Mathlib

open Filter Topology

noncomputable abbrev putnam_2021_b2_solution : ℝ := sorry
-- 2 / 3
/--
Determine the maximum value of the sum $S = \sum_{n=1}^\infty \frac{n}{2^n}(a_1a_2 \dots a_n)^{1/n}$ over all sequences $a_1,a_2,a_3,\dots$ of nonnegative real numbers satisfying $\sum_{k=1}^\infty a_k=1$.
-/
theorem putnam_2021_b2 :
    IsGreatest
      {S | ∃ a : ℕ+ → ℝ, (∑' k, a k = 1) ∧ (∀ k, 0 ≤ a k) ∧
        S = ∑' n : ℕ+, n / 2 ^ (n : ℕ) * (∏ k ∈ Finset.Icc 1 n, a k) ^ (1 / n : ℝ)}
      putnam_2021_b2_solution :=
  sorry
