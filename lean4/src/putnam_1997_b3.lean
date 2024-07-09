import Mathlib
open BigOperators

open Filter Topology Bornology Set

abbrev putnam_1997_b3_solution : Set ℕ := sorry
-- {n | (1 ≤ n ∧ n ≤ 4) ∨ (20 ≤ n ∧ n ≤ 24) ∨ (100 ≤ n ∧ n ≤ 104) ∨ (120 ≤ n ∧ n ≤ 124)}
theorem putnam_1997_b3
(n : ℕ)
(hn : n > 0)
: n ∈ putnam_1997_b3_solution ↔ ¬5 ∣ (∑ m in Finset.Icc 1 n, 1/m : ℚ).den :=
sorry
