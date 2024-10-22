import Mathlib

/--
Let $(x_n)_{n \geq 0}$ be a sequence of nonzero real numbers such that $x_n^2-x_{n-1}x_{n+1}=1$ for $n=1,2,3,\dots$. Prove there exists a real number $a$ such that $x_{n+1}=ax_n-x_{n-1}$ for all $n \geq 1$.
-/
theorem putnam_1993_a2
(x : ℕ → ℝ)
(xnonzero : ∀ n : ℕ, x n ≠ 0)
(hx : ∀ n ≥ 1, (x n) ^ 2 - x (n - 1) * x (n + 1) = 1)
: ∃ a : ℝ, ∀ n ≥ 1, x (n + 1) = a * x n - x (n - 1) :=
sorry
