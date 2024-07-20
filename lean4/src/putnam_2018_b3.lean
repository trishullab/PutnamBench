import Mathlib
open BigOperators

abbrev putnam_2018_b3_solution : Set ℕ := sorry
-- {2^2, 2^4, 2^8, 2^16}
theorem putnam_2018_b3
(n : ℕ)
(hn : n > 0)
: ((n < 10^100 ∧ ((n : ℤ) ∣ (2^n : ℤ) ∧ (n - 1 : ℤ) ∣ (2^n - 1 : ℤ) ∧ (n - 2 : ℤ) ∣ (2^n - 2 : ℤ))) ↔ n ∈ putnam_2018_b3_solution) :=
sorry
