import Mathlib
open BigOperators

open Function Set

abbrev putnam_2013_b1_solution : ℤ := sorry
-- -1
theorem putnam_2013_b1
(c : ℕ → ℤ)
(hc1 : c 1 = 1)
(hceven : ∀ n : ℕ, n > 0 → c (2 * n) = c n)
(hcodd : ∀ n : ℕ, n > 0 → c (2 * n + 1) = (-1) ^ n * c n)
: (∑ n : Set.Icc 1 2013, c n * c (n.1 + 2)) = putnam_2013_b1_solution :=
sorry
