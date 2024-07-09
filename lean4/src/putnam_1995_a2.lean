import Mathlib
open BigOperators

open Filter Topology Real

abbrev putnam_1995_a2_solution : Set (ℝ × ℝ) := sorry
-- {x | let ⟨a,b⟩ := x; a = b}
theorem putnam_1995_a2
(habconv : (ℝ × ℝ) → Prop := fun ⟨a,b⟩ =>
∃ limit : ℝ, Tendsto (fun t : ℝ => ∫ x in (Set.Icc b t), (sqrt (sqrt (x + a) - sqrt x) - sqrt (sqrt x - sqrt (x - b)))) atTop (𝓝 limit))
: ∀ ab : ℝ × ℝ, habconv ab ↔ ab ∈ putnam_1995_a2_solution :=
sorry
