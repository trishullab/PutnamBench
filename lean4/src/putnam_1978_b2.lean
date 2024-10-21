import Mathlib

open Set Real

abbrev putnam_1978_b2_solution : ℚ := sorry
-- 7 / 4
/--
Find
\[
\sum_{i=1}^{\infty} \sum_{j=1}^{\infty} \frac{1}{i^2j + 2ij + ij^2}.
\]
-/
theorem putnam_1978_b2
: (∑' i : ℕ+, ∑' j : ℕ+, (1 : ℚ) / (i ^ 2 * j + 2 * i * j + i * j ^ 2) = putnam_1978_b2_solution) :=
sorry
