import Mathlib

open EuclideanGeometry Topology Filter Complex SimpleGraph.Walk

/--
Prove that, if $4E \le V^2$, there exists a graph with $E$ edges and $V$ vertices with no triangles (cycles of length $3$).
-/
theorem putnam_1965_b5
{K : Type*}
[Fintype K]
(V E : ℕ)
(hV : V = Nat.card K)
(hE: 4*E ≤ V^2)
: ∃ G : SimpleGraph K, G.edgeSet.ncard = E ∧ ∀ a : K, ∀ w : G.Walk a a, w.length ≠ 3 :=
sorry
