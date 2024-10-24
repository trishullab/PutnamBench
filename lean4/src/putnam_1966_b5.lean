import Mathlib

open Topology Filter

/--
Prove that any set of $n \ge 3$ distinct points in the Euclidean plane, no three of which are collinear, forms the vertex set of some simple (non-self-intersecting) closed polygon.
-/
theorem putnam_1966_b5
(S : Finset (EuclideanSpace ℝ (Fin 2)))
(hcard : S.card ≥ 3)
(hS : ∀ s ⊆ S, s.card = 3 → ¬Collinear ℝ s.toSet)
: ∃ L : ZMod S.card → (EuclideanSpace ℝ (Fin 2)), (∀ p ∈ S, ∃! i : ZMod S.card, p = L i) ∧
∀ i j : ZMod S.card, i ≠ j → (∀ I : EuclideanSpace ℝ (Fin 2),
(I ∈ segment ℝ (L i) (L (i + 1)) ∧ I ∈ segment ℝ (L j) (L (j + 1))) →
I = L i ∨ I = L (i + 1) ∨ I = L j ∨ I = L (j + 1)) :=
sorry
