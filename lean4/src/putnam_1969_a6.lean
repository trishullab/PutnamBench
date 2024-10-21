import Mathlib

open Matrix Filter Topology Set Nat

/--
Let $(x_n)$ be a sequence, and let $y_n = x_{n-1} + 2*x_n$ for $n \geq 2$. Suppose that $(y_n)$ converges, then prove that $(x_n)$ converges.
-/
theorem putnam_1969_a6
(x : ℕ → ℝ)
(y : ℕ → ℝ)
(hy1 : ∀ n ≥ 2, y n = x (n-1) + 2 * (x n))
(hy2 : ∃ c : ℝ, Tendsto y atTop (𝓝 c))
: ∃ C : ℝ, Tendsto x atTop (𝓝 C) :=
sorry
