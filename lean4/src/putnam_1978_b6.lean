import Mathlib

open Set Real Filter Topology Polynomial

/--
Let $a_{ij}$ be real numbers in $[0, 1]$. Show that
\[
\left( \sum_{i=1}^n  \sum_{j=1}^{mi} \frac{a_{ij}}{i} \right) ^2 \leq 2m \sum_{i=1}^n \sum_{j=1}^{mi} a_{ij}.
\]
-/
theorem putnam_1978_b6
(a : ℕ → ℕ → ℝ)
(ha : ∀ i j, a i j ∈ Icc 0 1)
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 (m * i), a i j / i) ^ 2 ≤ 2 * m * ∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 (m * i), a i j) :=
sorry
