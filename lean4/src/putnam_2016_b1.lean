import Mathlib

open Polynomial Filter Topology Real Set Nat List

noncomputable abbrev putnam_2016_b1_solution : ℝ := sorry
-- exp 1 - 1
/--
Let $x_0,x_1,x_2,\dots$ be the sequence such that $x_0=1$ and for $n \geq 0$,
\[
x_{n+1} = \ln(e^{x_n} - x_n)
\]
(as usual, the function $\ln$ is the natural logarithm). Show that the infinite series
\[
x_0 + x_1 + x_2 + \cdots
\]
converges and find its sum.
-/
theorem putnam_2016_b1
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hxn : ∀ n : ℕ, x (n + 1) = log (exp (x n) - (x n)))
: (∑' n : ℕ, x n = putnam_2016_b1_solution) :=
sorry
