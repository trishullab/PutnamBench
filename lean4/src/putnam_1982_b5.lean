import Mathlib

open Set Function Filter Topology Polynomial Real

/--
For all $x > e^e$, let $S = u_0, u_1, \dots$ be a recursively defined sequence with $u_0 = e$ and $u_{n+1} = \log_{u_n} x$ for all $n \ge 0$. Prove that $S_x$ converges to some real number $g(x)$ and that this function $g$ is continuous for $x > e^e$.
-/
theorem putnam_1982_b5
(T : Set ℝ)
(hT : T = Ioi (Real.exp (Real.exp 1)))
(S : ℝ → ℕ → ℝ)
(hS : ∀ x ∈ T, S x 0 = (Real.exp 1) ∧ ∀ n : ℕ, S x (n + 1) = Real.logb (S x n) x)
(g : ℝ → ℝ)
: (∀ x ∈ T, ∃ L : ℝ, Tendsto (S x) atTop (𝓝 L)) ∧
((∀ x ∈ T, Tendsto (S x) atTop (𝓝 (g x))) → ContinuousOn g T) :=
sorry
