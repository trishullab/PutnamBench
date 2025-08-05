import Mathlib

open Filter Topology

noncomputable abbrev putnam_2015_b6_solution : ℝ := sorry
-- Real.pi ^ 2 / 16
/--
For each positive integer $k$, let $A(k)$ be the number of odd divisors of $k$ in the interval $[1,\sqrt{2k})$. Evaluate $\sum_{k=1}^\infty (-1)^{k-1}\frac{A(k)}{k}$.
-/
theorem putnam_2015_b6
    (A : ℕ → ℕ)
    (hA : ∀ k > 0, A k = {j : ℕ | Odd j ∧ j ∣ k ∧ j < Real.sqrt (2 * k)}.encard) :
    Tendsto (fun K : ℕ ↦ ∑ k ∈ Finset.Icc 1 K, (-1 : ℝ) ^ ((k : ℝ) - 1) * (A k / (k : ℝ)))
      atTop (𝓝 putnam_2015_b6_solution) :=
  sorry
