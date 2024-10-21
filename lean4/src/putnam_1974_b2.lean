import Mathlib

open Set Nat Polynomial Filter Topology

/--
Let $y(x)$ be a continuously differentiable real-valued function of a real vairable $x$. Show that if $(y')^2 + y^3 \to 0$ as $x \to +\infty$, then $y(x)$ and $y'(x) \to 0$ as $x \to +\infty$.
-/
theorem putnam_1974_b2
(y : ℝ → ℝ)
(ycontdiff : ContDiff ℝ 1 y)
(limy : Tendsto (fun x : ℝ => (deriv y x)^2 + (y x)^3) atTop (𝓝 0))
: Tendsto y atTop (𝓝 0) ∧ Tendsto (deriv y) atTop (𝓝 0) :=
sorry
