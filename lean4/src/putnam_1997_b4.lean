import Mathlib
open BigOperators

open Filter Topology Bornology Set Polynomial

theorem putnam_1997_b4
(a : ℕ → ℕ → ℤ)
(ha : ∀ n m : ℕ, a n m = coeff ((1 + X + X^2)^m) n)
: ∀ k : ℕ, k ≥ 0 → (∑ i in Finset.Icc 0 (Nat.floor (2*k/(3 : ℚ))), (-1)^(i : ℕ) * (a (k - i) i : ℝ)) ∈ Set.Icc (0 : ℝ) 1 :=
sorry
