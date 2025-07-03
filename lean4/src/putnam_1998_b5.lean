import Mathlib

open Set Function Metric

abbrev putnam_1998_b5_solution : ℕ := sorry
-- 1
/--
Let $N$ be the positive integer with 1998 decimal digits, all of them 1; that is, \[N=1111\cdots 11.\] Find the thousandth digit after the decimal point of $\sqrt N$.
-/
theorem putnam_1998_b5
(N : ℕ)
(hN : N = ∑ i ∈ Finset.range 1998, 10^i)
: putnam_1998_b5_solution = (Nat.floor (10^1000 * Real.sqrt N)) % 10 :=
sorry
