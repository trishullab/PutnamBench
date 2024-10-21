import Mathlib

abbrev putnam_1979_a3_solution : (ℝ × ℝ) → Prop := sorry
-- fun (a, b) => ∃ m : ℤ, a = m ∧ b = m
/--
Let $x_1, x_2, x_3, \dots$ be a sequence of nonzero real numbers such that $$x_n = \frac{x_{n-2}x_{n-1}}{2x_{n-2}-x_{n-1}}$$ for all $n \ge 3$. For which real values of $x_1$ and $x_2$ does $x_n$ attain integer values for infinitely many $n$?
-/
theorem putnam_1979_a3
(x : ℕ → ℝ)
(hx : ∀ n : ℕ, x n ≠ 0 ∧ (n ≥ 3 → x n = (x (n - 2))*(x (n - 1))/(2*(x (n - 2)) - (x (n - 1)))))
: (∀ m : ℕ, ∃ n : ℕ, n > m ∧ ∃ a : ℤ, a = x n) ↔ putnam_1979_a3_solution (x 1, x 2) :=
sorry
