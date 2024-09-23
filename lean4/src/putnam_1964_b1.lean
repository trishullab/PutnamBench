import Mathlib
open BigOperators

open Set Function Filter Topology

/--
Let $a_n$ be a sequence of positive integers such that $\sum_{n=1}^{\infty} 1/a_n$ converges. For all $n$, let $b_n$ be the number of $a_n$ which are at most $n$. Prove that $\lim_{n \to \infty} b_n/n = 0$.
-/
theorem putnam_1964_b1
    (a b : ℕ → ℕ)
    (h₁ : ∀ n, 0 < a n)
    (h₂ : Summable fun n ↦ (1 : ℝ) / a n)
    (h₃ : ∀ n, b n = {k | a k ≤ n}.ncard) :
    Tendsto (fun n ↦ (b n : ℝ) / n) atTop (𝓝 0) :=
  sorry
