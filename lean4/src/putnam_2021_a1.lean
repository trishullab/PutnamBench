import Mathlib

open Filter Topology

abbrev putnam_2021_a1_solution : ℕ := sorry
-- 578
/--
A grasshopper starts at the origin in the coordinate plane and makes a sequence of hops.
Each hop has length $5$, and after each hop the grasshopper is at a point whose coordinates are both integers; thus, there are $12$ possible locations for the grasshopper after the first hop.
What is the smallest number of hops needed for the grasshopper to reach the point $(2021, 2021)$?
-/
theorem putnam_2021_a1
    (P : List (ℤ × ℤ) → Prop)
    (P_def : ∀ l, P l ↔ l.Chain' fun p q ↦ (p.1 - q.1) ^ 2 + (p.2 - q.2) ^ 2 = 25) :
    IsLeast
      {k | ∃ l, P ((0, 0) :: l) ∧ l.getLast! = (2021, 2021) ∧ l.length = k}
      putnam_2021_a1_solution :=
  sorry