import Mathlib

open Nat Metric
open scoped InnerProductSpace

/--
Given any five points on a sphere, show that some four of them must lie on a closed hemisphere.
-/
theorem putnam_2002_a2
(unit_sphere : Set (EuclideanSpace ℝ (Fin 3)))
(hsphere : unit_sphere = sphere 0 1)
(hemi : EuclideanSpace ℝ (Fin 3) → Set (EuclideanSpace ℝ (Fin 3)))
(hhemi : hemi = fun V ↦ {P : EuclideanSpace ℝ (Fin 3) | ⟪P, V⟫_ℝ ≥ 0})
: (∀ (S : Set (EuclideanSpace ℝ (Fin 3))), S ⊆ unit_sphere ∧ S.encard = 5 → ∃ V : EuclideanSpace ℝ (Fin 3), V ≠ 0 ∧ (S ∩ hemi V).encard ≥ 4) :=
sorry
