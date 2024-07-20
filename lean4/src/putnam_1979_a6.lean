import Mathlib
open BigOperators

open Set

theorem putnam_1979_a6
(n : ℕ)
(p : ℕ → ℝ)
(hp : ∀ i ∈ Finset.range n, p i ∈ Icc 0 1)
: ∃ x ∈ Icc 0 1, (∀ i ∈ Finset.range n, x ≠ p i) ∧ ∑ i in Finset.range n, 1/|x - p i| ≤ 8*n*∑ i in Finset.range n, (1 : ℝ)/(2*i + 1) :=
sorry
