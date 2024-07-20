import Mathlib
open BigOperators

open Set

abbrev putnam_1971_a2_solution : Set (Polynomial ℝ) := sorry
-- {Polynomial.X}
theorem putnam_1971_a2
: ∀ P : Polynomial ℝ, (P.eval 0 = 0 ∧ (∀ x : ℝ, P.eval (x^2 + 1) = (P.eval x)^2 + 1)) ↔ P ∈ putnam_1971_a2_solution :=
sorry
