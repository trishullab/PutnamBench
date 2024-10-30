import Mathlib

open Set Filter Topology

/--
Prove that if $\sum_{n=1}^\infty a_n$ is a convergent series of positive real numbers, then so is $\sum_{n=1}^\infty (a_n)^{n/(n+1)}$.
-/
theorem putnam_1988_b4
    (a : ℕ → ℝ)
    (IsPosConv : (ℕ → ℝ) → Prop)
    (IsPosConv_def : ∀ a' : ℕ → ℝ, IsPosConv a' ↔
      (∀ n ≥ 1, a' n > 0) ∧
      (∃ s : ℝ, Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a' n) atTop (𝓝 s))) :
    (IsPosConv a) → IsPosConv (fun n : ℕ => (a n) ^ ((n : ℝ) / (n + 1))) :=
  sorry
