import Mathlib
open BigOperators

open Nat Metric

theorem putnam_2002_a2
(sphere : Set (EuclideanSpace ℝ (Fin 3)) := sphere 0 1)
(hemi : (EuclideanSpace ℝ (Fin 3)) → Set (EuclideanSpace ℝ (Fin 3)) := fun V ↦ {P : EuclideanSpace ℝ (Fin 3) | Matrix.dotProduct P V ≥ 0})
: (∀ (S : Set (EuclideanSpace ℝ (Fin 3))), S ⊆ sphere ∧ S.encard = 5 → ∃ V : (EuclideanSpace ℝ (Fin 3)), V ≠ 0 ∧ (S ∩ hemi V).encard ≥ 4) :=
sorry
