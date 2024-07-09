import Mathlib
open BigOperators

-- Note: this problem admits several possible correct solutions; this is the one shown on the solutions document
abbrev putnam_2015_a2_solution : ℕ := sorry
-- 181
theorem putnam_2015_a2
(a : ℕ → ℤ)
(abase : a 0 = 1 ∧ a 1 = 2)
(arec : ∀ n ≥ 2, a n = 4 * a (n - 1) - a (n - 2))
: Odd putnam_2015_a2_solution ∧ putnam_2015_a2_solution.Prime ∧ ((putnam_2015_a2_solution : ℤ) ∣ a 2015) :=
sorry
