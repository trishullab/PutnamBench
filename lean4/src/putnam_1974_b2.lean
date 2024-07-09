import Mathlib
open BigOperators

open Set Nat Polynomial Filter Topology

theorem putnam_1974_b2
(y : ℝ → ℝ)
(ycontdiff : ContDiff ℝ 1 y)
(limy : Tendsto (fun x : ℝ => (deriv y x)^2 + (y x)^3) atTop (𝓝 0))
: Tendsto y atTop (𝓝 0) ∧ Tendsto (deriv y) atTop (𝓝 0) :=
sorry
