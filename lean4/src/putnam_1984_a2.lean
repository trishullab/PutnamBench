import Mathlib

abbrev putnam_1984_a2_solution : ℚ := sorry
-- 2
/--
Express $\sum_{k=1}^\infty (6^k/(3^{k+1}-2^{k+1})(3^k-2^k))$ as a rational number.
-/
theorem putnam_1984_a2
: ∑' k : Set.Ici 1, (6 ^ (k : ℕ) / ((3 ^ ((k : ℕ) + 1) - 2 ^ ((k : ℕ) + 1)) * (3 ^ (k : ℕ) - 2 ^ (k : ℕ)))) = putnam_1984_a2_solution :=
sorry
