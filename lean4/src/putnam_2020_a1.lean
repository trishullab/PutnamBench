import Mathlib
open BigOperators

abbrev putnam_2020_a1_solution : ℕ := sorry
-- 508536
theorem putnam_2020_a1
: Set.ncard {x : ℕ | (2020 ∣ x) ∧ (Nat.log 10 x) + 1 ≤ 2020 ∧ (∃ k l, k ≥ l ∧ x = ∑ i in Finset.range (k-l+1), 10 ^ (i+l))} = putnam_2020_a1_solution :=
sorry
