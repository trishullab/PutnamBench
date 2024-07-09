import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

theorem putnam_1970_a4
(x : ℕ → ℝ)
(hxlim : Tendsto (fun n => x n - x (n-2)) atTop (𝓝 0))
: Tendsto (fun n => (x n - x (n-1))/n) atTop (𝓝 0) :=
sorry
