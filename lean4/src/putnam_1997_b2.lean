import Mathlib

open Filter Topology Bornology Set

/--
Let $f$ be a twice-differentiable real-valued function satisfying \[f(x)+f''(x)=-xg(x)f'(x),\] where $g(x)\geq 0$ for all real $x$.  Prove that $|f(x)|$ is bounded.
-/
theorem putnam_1997_b2
(f g : ℝ → ℝ)
(hg : ∀ x : ℝ, g x ≥ 0)
(hfderiv1 : ContDiff ℝ 1 f)
(hfderiv2 : Differentiable ℝ (deriv f))
(hfg : ∀ x : ℝ, f x + iteratedDeriv 2 f x = -x * g x * deriv f x)
: IsBounded (range (fun x => |f x|)) :=
sorry
