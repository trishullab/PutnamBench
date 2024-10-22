import Mathlib

open Topology

/--
If a convex polygon $L$ is contained entirely within a square of side length $1$, prove that the sum of the squares of the side lengths of $L$ is no greater than $4$.
-/
theorem putnam_1966_b1
(n : ℕ)
(hn : n ≥ 3)
(L : ZMod n → (EuclideanSpace ℝ (Fin 2)))
(hsq : ∀ i : ZMod n, L i 0 ∈ Set.Icc 0 1 ∧ L i 1 ∈ Set.Icc 0 1)
(hnoncol : ∀ i j k : ZMod n, i ≠ j ∧ j ≠ k ∧ k ≠ i → ¬Collinear ℝ {L i, L j, L k})
(hconvex : ∀ i : ZMod n, segment ℝ (L i) (L (i + 1)) ∩ interior (convexHull ℝ {L j | j : ZMod n}) = ∅)
: ∑ i : Fin n, (dist (L i) (L (i + 1)))^2 ≤ 4 :=
sorry
