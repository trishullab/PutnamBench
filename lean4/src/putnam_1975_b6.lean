import Mathlib
open BigOperators

open Polynomial Real Complex Matrix Filter Topology Multiset

theorem putnam_1975_b6
(s : ℕ → ℝ)
(hs : s = fun (n : ℕ) => ∑ i in Finset.Icc 1 n, 1/(i : ℝ))
: (∀ n : ℕ, n > 1 → n * (n+1 : ℝ)^(1/(n : ℝ)) < n + s n) ∧ (∀ n : ℕ, n > 2 → ((n : ℝ) - 1)*((n : ℝ)^(-1/(n-1 : ℝ))) < n - s n) :=
sorry
