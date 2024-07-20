import Mathlib
open BigOperators

open Filter Topology Real

theorem putnam_1995_a4
(n : ℕ)
(hn : n > 0)
(necklace : Fin n → ℤ)
(hnecklacesum : ∑ i : Fin n, necklace i = n - 1)
: ∃ cut : Fin n, ∀ k : Fin n, ∑ i : {j : Fin n | j.1 ≤ k}, necklace (cut + i) ≤ k :=
sorry
