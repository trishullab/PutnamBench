import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

theorem putnam_1970_b2
(T : ℝ)
(H : Polynomial ℝ)
(hT : T > 0)
(hH : H.degree ≤ 3)
: (H.eval (-T / Real.sqrt 3) + H.eval (T / Real.sqrt 3))/2 = ⨍ t in Set.Icc (-T) T, H.eval t :=
sorry
