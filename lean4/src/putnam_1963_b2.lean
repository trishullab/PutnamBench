import Mathlib

open Topology Filter Polynomial

abbrev putnam_1963_b2_solution : Prop := sorry
-- True
/--
Let $S$ be the set of all numbers of the form $2^m3^n$, where $m$ and $n$ are integers, and let $P$ be the set of all positive real numbers. Is $S$ dense in $P$?
-/
theorem putnam_1963_b2
(S : Set ℝ)
(hS : S = {2 ^ m * 3 ^ n | (m : ℤ) (n : ℤ)})
: closure S ⊇ Set.Ioi (0 : ℝ) ↔ putnam_1963_b2_solution :=
sorry
