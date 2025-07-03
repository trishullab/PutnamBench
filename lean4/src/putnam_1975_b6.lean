import Mathlib

open Polynomial Real Complex Matrix Filter Topology Multiset

/--
Show that if $s_n = 1 + \frac{1}{2} + \frac{1}{3} + \dots + 1/n, then $n(n+1)^{1/n} < n + s_n$ whenever $n > 1$ and $(n-1)n^{-1/(n-1)} < n - s_n$ whenever $n > 2$.
-/
theorem putnam_1975_b6
(s : ℕ → ℝ)
(hs : s = fun (n : ℕ) => ∑ i ∈ Finset.Icc 1 n, 1/(i : ℝ))
: (∀ n : ℕ, n > 1 → n * (n+1 : ℝ)^(1/(n : ℝ)) < n + s n) ∧ (∀ n : ℕ, n > 2 → ((n : ℝ) - 1)*((n : ℝ)^(-1/(n-1 : ℝ))) < n - s n) :=
sorry
