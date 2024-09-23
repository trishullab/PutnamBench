import Mathlib
open BigOperators

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
(hP : P = fun l : List (ℤ × ℤ) => l.length ≥ 1 ∧ l[0]! = (0, 0) ∧ l[l.length-1]! = (2021, 2021) ∧
∀ n ∈ Finset.range (l.length-1), Real.sqrt ((l[n]!.1 - l[n + 1]!.1)^2 + (l[n]!.2 - l[n + 1]!.2)^2) = 5)
: (∃ l : List (ℤ × ℤ), P l ∧ l.length = putnam_2021_a1_solution) ∧
∀ l : List (ℤ × ℤ), P l → l.length ≥ putnam_2021_a1_solution :=
sorry
