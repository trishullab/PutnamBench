import Mathlib
open BigOperators

open Function Set

theorem putnam_2013_a3
(n : ℕ)
(a : Set.Icc 0 n → ℝ)
(x : ℝ)
(hx : 0 < x ∧ x < 1)
(hsum : (∑ i : Set.Icc 0 n, a i / (1 - x ^ (i.1 + 1))) = 0)
: ∃ y : ℝ, 0 < y ∧ y < 1 ∧ (∑ i : Set.Icc 0 n, a i * y ^ i.1) = 0 :=
sorry
