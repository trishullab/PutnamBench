import Mathlib

open Topology Filter Matrix

abbrev putnam_2011_b3_solution : Prop := sorry
-- True
/--
Let $f$ and $g$ be (real-valued) functions defined on an open interval containing $0$, with $g$ nonzero and continuous at $0$. If $fg$ and $f/g$ are differentiable at $0$, must $f$ be differentiable at $0$?
-/
theorem putnam_2011_b3 :
  ((∀ f g : ℝ → ℝ,
    g 0 ≠ 0 → ContinuousAt g 0 →
    DifferentiableAt ℝ (fun x ↦ f x * g x) 0 →
    DifferentiableAt ℝ (fun x ↦ f x / g x) 0 →
    (DifferentiableAt ℝ f 0))
  ↔ putnam_2011_b3_solution) :=
sorry
