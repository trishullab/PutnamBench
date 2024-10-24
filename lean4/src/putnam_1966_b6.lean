import Mathlib

open Topology Filter

/--
Prove that any solution $y(x)$ to the differential equation $y'' + e^{x}y = 0$ remains bounded as $x$ goes to $+\infty$.
-/
theorem putnam_1966_b6
(y : ℝ → ℝ)
(hy : Differentiable ℝ y ∧ Differentiable ℝ (deriv y))
(diffeq : deriv (deriv y) + Real.exp * y = 0)
: ∃ r s N : ℝ, ∀ x > N, r ≤ y x ∧ y x ≤ s :=
sorry
