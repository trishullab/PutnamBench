import Mathlib
open BigOperators

open MeasureTheory Metric Topology Filter

abbrev putnam_2019_a4_solution : Prop := sorry
-- False
theorem putnam_2019_a4
    (P : (EuclideanSpace ℝ (Fin 3) → ℝ) → Prop)
    (P_def : ∀ f, P f ↔ ∀ C, ∫ x in sphere C 1, f x ∂μH[2] = 0) :
    (∀ f, Continuous f → P f → f = 0) ↔ putnam_2019_a4_solution :=
  sorry
