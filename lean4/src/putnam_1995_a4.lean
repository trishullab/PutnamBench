import Mathlib
open BigOperators

open Filter Topology Real

theorem putnam_1995_a4
(n : ℕ)
(hn : n > 0)
(necklace : ℕ → ℤ)
(hnecklacesum : ∑ i ∈ Finset.range n, necklace i = n - 1)
: ∃ cut ∈ Finset.range n, ∀ k ∈ Finset.range n, ∑ i ≤ k, necklace ((cut + i) % n) ≤ k :=
sorry
