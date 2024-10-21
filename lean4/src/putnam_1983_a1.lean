import Mathlib

abbrev putnam_1983_a1_solution : ℕ := sorry
-- 2301
/--
How many positive integers $n$ are there such that $n$ is an exact divisor of at least one of the numbers $10^{40},20^{30}$?
-/
theorem putnam_1983_a1
: {n : ℤ | n > 0 ∧ (n ∣ 10 ^ 40 ∨ n ∣ 20 ^ 30)}.encard = putnam_1983_a1_solution :=
sorry
