import Mathlib

open Filter Topology

abbrev putnam_1994_b1_solution : Set ℤ := sorry
-- {n : ℤ | (315 ≤ n ∧ n ≤ 325) ∨ (332 ≤ n ∧ n ≤ 350)}
/--
Find all positive integers $n$ that are within $250$ of exactly $15$ perfect squares.
-/
theorem putnam_1994_b1
    (n : ℤ) :
    n ∈ putnam_1994_b1_solution ↔
    (0 < n ∧ {m : ℕ | |n - m ^ 2| ≤ 250}.encard = 15) :=
  sorry
