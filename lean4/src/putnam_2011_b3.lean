import Mathlib
open BigOperators

open Topology Filter Matrix

abbrev putnam_2011_b3_solution : Prop := sorry
-- True
theorem putnam_2011_b3
: ((∀ f g : ℝ → ℝ, g 0 ≠ 0 → ContinuousAt g 0 → DifferentiableAt ℝ (fun x ↦ f x * g x) 0 → DifferentiableAt ℝ (fun x ↦ f x / g x) 0 → (DifferentiableAt ℝ f 0)) ↔ putnam_2011_b3_solution) :=
sorry
