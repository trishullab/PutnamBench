import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

theorem putnam_1970_b4
(x : ℝ → ℝ)
(hdiff : DifferentiableOn ℝ x (Set.Icc 0 1) ∧ DifferentiableOn ℝ (deriv x) (Set.Icc 0 1))
(hx : x 1 - x 0 = 1)
(hv : deriv x 0 = 0 ∧ deriv x 1 = 0)
(hs : ∀ t ∈ Set.Ioo 0 1, |deriv x t| ≤ 3/2)
: ∃ t ∈ Set.Icc 0 1, |(deriv (deriv x)) t| ≥ 9/2 :=
sorry
