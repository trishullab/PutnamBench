import Mathlib
open BigOperators

abbrev putnam_2020_a2_solution : ℕ → ℕ := sorry
-- fun k ↦ 4 ^ k
theorem putnam_2020_a2
(k : ℕ)
: (∑ j in Finset.Icc 0 k, 2 ^ (k - j) * Nat.choose (k + j) j = putnam_2020_a2_solution k) :=
sorry
