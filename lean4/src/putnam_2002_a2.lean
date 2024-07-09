import Mathlib
open BigOperators

open Nat

theorem putnam_2002_a2
(sphere : Set (Fin 3 → ℝ) := {P : Fin 3 → ℝ | Euclidean.dist 0 P = 1})
(hemi : (Fin 3 → ℝ) → Set (Fin 3 → ℝ) := fun V ↦ {P : Fin 3 → ℝ | Matrix.dotProduct P V ≥ 0})
: (∀ (S : Set (Fin 3 → ℝ)), S ⊆ sphere ∧ S.encard = 5 → ∃ V : (Fin 3 → ℝ), V ≠ 0 ∧ (S ∩ hemi V).encard = 4) :=
sorry
