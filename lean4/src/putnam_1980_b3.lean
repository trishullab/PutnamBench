import Mathlib

abbrev putnam_1980_b3_solution : Set ℝ := sorry
-- {a : ℝ | a ≥ 3}
/--
For which real numbers $a$ does the sequence defined by the initial condition $u_0=a$ and the recursion $u_{n+1}=2u_n-n^2$ have $u_n>0$ for all $n \geq 0$? (Express the answer in the simplest form.)
-/
theorem putnam_1980_b3
(a : ℝ)
(u : ℕ → ℝ)
(hu : u 0 = a ∧ (∀ n : ℕ, u (n + 1) = 2 * u n - n ^ 2))
: (∀ n : ℕ, u n > 0) ↔ a ∈ putnam_1980_b3_solution :=
sorry
