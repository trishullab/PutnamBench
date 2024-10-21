import Mathlib

open Topology Filter Set Polynomial Function

abbrev putnam_1981_a3_solution : Prop := sorry
-- False
/--
Does the limit $$lim_{t \rightarrow \infty}e^{-t}\int_{0}^{t}\int_{0}^{t}\frac{e^x - e^y}{x - y} dx dy$$exist?
-/
theorem putnam_1981_a3
(f : ℝ → ℝ)
(hf : f = fun t : ℝ => Real.exp (-t) * ∫ y in (Ico 0 t), ∫ x in (Ico 0 t), (Real.exp x - Real.exp y) / (x - y))
: (∃ L : ℝ, Tendsto f atTop (𝓝 L)) ↔ putnam_1981_a3_solution :=
sorry
