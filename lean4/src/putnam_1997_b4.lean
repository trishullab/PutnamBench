import Mathlib
open BigOperators

open Filter Topology Bornology Set Polynomial

theorem putnam_1997_b4
    (a : ℕ → ℕ → ℤ)
    (ha : ∀ m n, a m n = coeff ((1 + X + X ^ 2) ^ m) n)
    (k : ℕ) :
    (∑ i in Finset.Iic ⌊2 * (k : ℚ) / 3⌋₊, (-1) ^ i * a (k - i) i) ∈ Icc 0 1 :=
  sorry
