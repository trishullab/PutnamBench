import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

theorem putnam_1970_b3
(S : Set (ℝ × ℝ))
(a b : ℝ)
(hab : a < b)
(hS : ∀ s ∈ S, s.1 ∈ Ioo a b)
(hSclosed : IsClosed S)
: IsClosed {y | ∃ x : ℝ, ⟨x,y⟩ ∈ S} :=
sorry
