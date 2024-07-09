import Mathlib
open BigOperators

open Set

abbrev putnam_1985_a1_solution : ℕ × ℕ × ℕ × ℕ := sorry
-- (10, 10, 0, 0)
theorem putnam_1985_a1
: (let (a, b, c, d) := putnam_1985_a1_solution; {(A1, A2, A3) : Set ℤ × Set ℤ × Set ℤ | A1 ∪ A2 ∪ A3 = Icc 1 10 ∧ A1 ∩ A2 ∩ A3 = ∅}.ncard = 2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d) :=
sorry
