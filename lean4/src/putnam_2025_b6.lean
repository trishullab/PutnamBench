import Mathlib

open Real

noncomputable abbrev putnam_2025_b6_solution : ℝ := sorry
-- 1 / 4

/--
Let $\mathbb{N} = \{1, 2, 3, \ldots\}$. Find the largest real constant $r$ such that
there exists a function $g: \mathbb{N} \to \mathbb{N}$ such that
$$g(n+1) - g(n) \geq (g(g(n)))^r$$
for all $n \in \mathbb{N}$.
-/
theorem putnam_2025_b6 :
    IsGreatest
      {r : ℝ | ∃ g : ℕ → ℕ, (∀ n : ℕ, 0 < n → 0 < g n) ∧
        ∀ n : ℕ, 0 < n → ((g (g n) : ℝ) ^ r) ≤ (g (n + 1) : ℝ) - (g n : ℝ)}
      putnam_2025_b6_solution := by
  sorry
