import Mathlib
open BigOperators

open EuclideanGeometry Topology Filter Complex SimpleGraph.Walk

theorem putnam_1965_b5
[Fintype K]
(V : ℕ := Nat.card K)
(E : ℕ)
(hE: 4*E ≤ V^2)
: ∃ G : SimpleGraph K, G.edgeSet.ncard = E ∧ ∀ a : K, ∀ w : G.Walk a a, w.length ≠ 3 :=
sorry
