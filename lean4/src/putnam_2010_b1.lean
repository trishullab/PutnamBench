import Mathlib

open Filter Topology Set

abbrev putnam_2010_b1_solution : Prop := sorry
-- False
/--
Is there an infinite sequence of real numbers $a_1, a_2, a_3, \dots$ such that \[ a_1^m + a_2^m + a_3^m + \cdots = m \] for every positive integer $m$?
-/
theorem putnam_2010_b1
: (∃ a : ℕ → ℝ, ∀ m : ℕ, m > 0 → ∑' i : ℕ, (a i)^m = m) ↔ putnam_2010_b1_solution :=
sorry
