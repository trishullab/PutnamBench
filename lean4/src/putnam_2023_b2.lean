import Mathlib

open Nat

abbrev putnam_2023_b2_solution : ℕ := sorry
-- 3
/--
For each positive integer $n$, let $k(n)$ be the number of ones in the binary representation of $2023 * n$. What is the minimum value of $k(n)$?
-/
theorem putnam_2023_b2
: sInf {(digits 2 (2023*n)).sum | n > 0} = putnam_2023_b2_solution :=
sorry
