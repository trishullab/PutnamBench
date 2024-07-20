import Mathlib
open BigOperators

open Filter Topology Metric

theorem putnam_1999_b4
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
(hpos: ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
(hle : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x)
: ∀ x : ℝ, deriv f x < 2 * (f x) :=
sorry
