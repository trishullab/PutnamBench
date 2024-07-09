import Mathlib
open BigOperators

open Nat Topology Filter

-- TODO: (George) Double-check on Euclidean.dist usage here
theorem putnam_1967_a5
(R : Set (EuclideanSpace ℝ (Fin 2)))
(hR : Convex ℝ R ∧ (MeasureTheory.volume R).toReal > Real.pi / 4)
: ∃ P ∈ R, ∃ Q ∈ R, Euclidean.dist P Q = 1 :=
sorry
