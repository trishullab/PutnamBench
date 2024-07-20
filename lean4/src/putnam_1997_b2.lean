import Mathlib
open BigOperators

open Filter Topology Bornology Set

theorem putnam_1997_b2
(f g : ℝ → ℝ)
(hg : ∀ x : ℝ, g x ≥ 0)
(hfderiv1 : ContDiff ℝ 1 f)
(hfderiv2 : Differentiable ℝ (deriv f))
(hfg : ∀ x : ℝ, f x + iteratedDeriv 2 f x = -x * g x * deriv f x)
: IsBounded (range (fun x => |f x|)) :=
sorry
