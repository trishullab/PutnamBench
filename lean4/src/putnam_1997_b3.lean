import Mathlib

open Filter Topology Bornology Set

abbrev putnam_1997_b3_solution : Set ℕ := sorry
-- {n | (1 ≤ n ∧ n ≤ 4) ∨ (20 ≤ n ∧ n ≤ 24) ∨ (100 ≤ n ∧ n ≤ 104) ∨ (120 ≤ n ∧ n ≤ 124)}
/--
For each positive integer $n$, write the sum $\sum_{m=1}^n 1/m$ in the form $p_n/q_n$, where $p_n$ and $q_n$ are relatively prime positive integers.  Determine all $n$ such that 5 does not divide $q_n$.
-/
theorem putnam_1997_b3
(n : ℕ)
(hn : n > 0)
: n ∈ putnam_1997_b3_solution ↔ ¬5 ∣ (∑ m ∈ Finset.Icc 1 n, 1/m : ℚ).den :=
sorry
