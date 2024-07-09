import Mathlib
open BigOperators

open Function

theorem putnam_1996_b2
(n : ℕ)
(prododd : ℝ)
(npos : n > 0)
(hprododd : prododd = ∏ i in Finset.range (2 * n), if Odd i then i else 1)
: ((2 * n - 1 : ℝ) / Real.exp 1) ^ ((2 * n - 1 : ℝ) / 2) < prododd ∧ prododd < ((2 * n + 1 : ℝ) / Real.exp 1) ^ ((2 * n + 1 : ℝ) / 2) :=
sorry
