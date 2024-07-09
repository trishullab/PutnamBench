import Mathlib
open BigOperators

open Set Nat Function

abbrev putnam_2007_b4_solution : ℕ → ℕ := sorry
-- fun n ↦ 2 ^ (n + 1)
theorem putnam_2007_b4
(n : ℕ)
(npos : n > 0)
: ({(P, Q) : (Polynomial ℝ) × (Polynomial ℝ) | P ^ 2 + Q ^ 2 = Polynomial.X ^ (2 * n) + 1 ∧ P.degree > Q.degree}.ncard = putnam_2007_b4_solution n) :=
sorry
