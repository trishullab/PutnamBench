import Mathlib
open BigOperators

open Set Real Filter Topology Polynomial

theorem putnam_1978_b6
(a : ℕ → ℕ → ℝ)
(ha : ∀ i j, a i j ∈ Icc 0 1)
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j / i) ^ 2 ≤ 2 * m * ∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j) :=
sorry
