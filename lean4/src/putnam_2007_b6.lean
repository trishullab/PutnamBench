import Mathlib

open Set Nat Function

/--
For each positive integer $n$, let $f(n)$ be the number of ways to make $n!$ cents using an unordered collection of coins, each worth $k!$ cents for some $k$, $1 \leq k \leq n$. Prove that for some constant $C$, independent of $n$,
\[
n^{n^2/2 - Cn} e^{-n^2/4} \leq f(n) \leq n^{n^2/2 + Cn}e^{-n^2/4}.
\]
-/
theorem putnam_2007_b6
(f : ℕ → ℕ)
(hf : f = fun n ↦ {M : Multiset ℕ | M.sum = (n)! ∧ ∀ m ∈ M, ∃ k ∈ Icc 1 n, m = (k)!}.ncard)
: (∃ C : ℝ, ∀ n : ℕ, n ≥ 2 → n ^ (n ^ 2 / 2 - C * n) * Real.exp (-(n ^ 2) / 4) ≤ f n ∧ f n ≤ n ^ (n ^ 2 / 2 + C * n) * Real.exp (-(n ^ 2) / 4)) :=
sorry
