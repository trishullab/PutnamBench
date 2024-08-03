import Mathlib
open BigOperators

open MvPolynomial Real Nat

abbrev putnam_1987_a6_solution : Set ℝ := sorry
-- {x : ℝ | x > 0 ∧ x < 25}
theorem putnam_1987_a6
(a : ℕ → ℕ)
(ha : a = fun n ↦ {i | (digits 3 n).get i = 0}.ncard)
: ({x : ℝ | x > 0 ∧ Summable (fun n ↦ x ^ (a n) / (n ^ 3))} = putnam_1987_a6_solution) :=
sorry
