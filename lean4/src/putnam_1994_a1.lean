import Mathlib

open Filter Topology

/--
Suppose that a sequence $a_1,a_2,a_3,\dots$ satisfies $0<a_n \leq a_{2n}+a_{2n+1}$ for all $n \geq 1$. Prove that the series $\sum_{n=1}^\infty a_n$ diverges.
-/
theorem putnam_1994_a1
    (a : ℕ → ℝ)
    (ha : ∀ n ≥ 1, 0 < a n ∧ a n ≤ a (2 * n) + a (2 * n + 1)) :
    Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a n) atTop atTop :=
  sorry
