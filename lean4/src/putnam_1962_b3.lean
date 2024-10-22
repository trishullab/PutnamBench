import Mathlib

open MeasureTheory

/--
Let $S$ be a convex region in the Euclidean plane, containing the origin, for which every ray from the origin has at least one point outside $S$. Assuming that either the origin is an interior point of $S$ or $S$ is topologically closed, prove that $S$ is bounded.
-/
theorem putnam_1962_b3
(S : Set (EuclideanSpace ℝ (Fin 2)))
(hS : Convex ℝ S ∧ 0 ∈ S)
(htopo : (0 ∈ interior S) ∨ IsClosed S)
(hray : ∀ P : EuclideanSpace ℝ (Fin 2), P ≠ 0 → ∃ Q : EuclideanSpace ℝ (Fin 2), SameRay ℝ P Q ∧ Q ∉ S)
: Bornology.IsBounded S :=
sorry
