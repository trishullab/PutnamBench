import Mathlib
open BigOperators

abbrev putnam_1979_a3_solution : (ℝ × ℝ) → Prop := sorry
-- fun (a, b) => ∃ m : ℤ, a = m ∧ b = m
theorem putnam_1979_a3
(x : ℕ → ℝ)
(hx : ∀ n : ℕ, x n ≠ 0 ∧ (n ≥ 3 → x n = (x (n - 2))*(x (n - 1))/(2*(x (n - 2)) - (x (n - 1)))))
: (∀ m : ℕ, ∃ n : ℕ, n > m ∧ ∃ a : ℤ, a = x n) ↔ putnam_1979_a3_solution (x 1, x 2) :=
sorry
