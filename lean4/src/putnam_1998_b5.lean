import Mathlib
open BigOperators

open Set Function Metric

abbrev putnam_1998_b5_solution : ℕ := sorry
-- 1
theorem putnam_1998_b5
(N : ℕ)
(hN : N = ∑ i in Finset.range 1998, 10^i)
: putnam_1998_b5_solution = (Nat.floor (10^1000 * Real.sqrt N)) % 10 :=
sorry
