import Mathlib

open Topology Filter Nat Function

abbrev putnam_1992_b1_solution : ℕ → ℤ := sorry
-- fun n ↦ 2 * n - 3
/--
Let $S$ be a set of $n$ distinct real numbers. Let $A_S$ be the set of numbers that occur as averages of two distinct elements of $S$. For a given $n \geq 2$, what is the smallest possible number of elements in $A_S$?
-/
theorem putnam_1992_b1
  (n : ℕ) (hn : n ≥ 2)
  (A : Finset ℝ → Set ℝ)
  (hA : A = fun S ↦ {x | ∃ a ∈ S, ∃ b ∈ S, a ≠ b ∧ (a + b) / 2 = x}) :
  IsLeast {k : ℤ | ∃ S : Finset ℝ, S.card = n ∧ k = (A S).ncard} (putnam_1992_b1_solution n) :=
sorry
