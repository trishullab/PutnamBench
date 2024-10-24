import Mathlib

open Topology Filter

abbrev putnam_2019_a1_solution : Set ℤ := sorry
-- {n : ℤ | n ≥ 0 ∧ ¬Int.ModEq 9 n 3 ∧ ¬Int.ModEq 9 n 6}
/--
Determine all possible values of the expression
\[
A^3+B^3+C^3-3ABC
\]
where $A, B$, and $C$ are nonnegative integers.
-/
theorem putnam_2019_a1
: {n : ℤ | ∃ A B C : ℤ, A ≥ 0 ∧ B ≥ 0 ∧ C ≥ 0 ∧ A^3 + B^3 + C^3 - 3*A*B*C = n} = putnam_2019_a1_solution :=
sorry
