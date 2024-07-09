import Mathlib
open BigOperators

open Topology Filter Set Polynomial Function

abbrev putnam_1981_a3_solution : Prop := sorry
-- False
theorem putnam_1981_a3
(f : ℝ → ℝ := fun t : ℝ => Real.exp (-t) * ∫ y in (Ico 0 t), ∫ x in (Ico 0 t), (Real.exp x - Real.exp y) / (x - y))
: (∃ L : ℝ, Tendsto f atTop (𝓝 L)) ↔ putnam_1981_a3_solution :=
sorry
