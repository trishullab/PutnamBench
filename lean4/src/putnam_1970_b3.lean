import Mathlib

open Metric Set EuclideanGeometry Filter Topology

/--
A closed subset $S$ of $\mathbb{R}^2$ lies in $a < x < b$. Show that its projection on the y-axis is closed.
-/
theorem putnam_1970_b3
(S : Set (ℝ × ℝ))
(a b : ℝ)
(hab : a < b)
(hS : ∀ s ∈ S, s.1 ∈ Ioo a b)
(hSclosed : IsClosed S)
: IsClosed {y | ∃ x : ℝ, ⟨x,y⟩ ∈ S} :=
sorry
