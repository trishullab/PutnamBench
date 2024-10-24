import Mathlib

open Topology Filter

/--
If $0 < x_1 < 1$ and $x_{n+1} = x_n(1 - x_n)$ for all $n \ge 1$, prove that $\lim_{n \to \infty} nx_n = 1$.
-/
theorem putnam_1966_a3
(x : ℕ → ℝ)
(hx1 : 0 < x 1 ∧ x 1 < 1)
(hxi : ∀ n ≥ 1, x (n + 1) = (x n) * (1 - (x n)))
: Tendsto (fun n : ℕ => n * (x n)) atTop (𝓝 1) :=
sorry
