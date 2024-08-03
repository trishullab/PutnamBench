import Mathlib
open BigOperators

abbrev putnam_1962_a5_solution : ℕ → ℕ := sorry
-- fun n : ℕ => n * (n + 1) * 2^(n - 2)
theorem putnam_1962_a5
: ∀ n ≥ 2, putnam_1962_a5_solution n = ∑ k in Finset.Icc 1 n, Nat.choose n k * k^2 :=
sorry
