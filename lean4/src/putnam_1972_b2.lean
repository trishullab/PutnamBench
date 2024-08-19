import Mathlib
open BigOperators

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

noncomputable abbrev putnam_1972_b2_solution : ℝ → ℝ → ℝ := sorry
-- fun s v : ℝ ↦ 2 * s / v
theorem putnam_1972_b2
(s v : ℝ)
(hs : s > 0)
(hv : v > 0)
(valid : ℝ → (ℝ → ℝ) → Prop)
(hvalid : valid = fun (t : ℝ) (x : ℝ → ℝ) ↦
DifferentiableOn ℝ x (Set.Icc 0 t) ∧ DifferentiableOn ℝ (deriv x) (Set.Icc 0 t)
 ∧ AntitoneOn (deriv (deriv x)) (Set.Icc 0 t) ∧ deriv x 0 = 0 ∧ deriv x t = v ∧ x t - x 0 = s)
: (∃ x : ℝ → ℝ, valid (putnam_1972_b2_solution s v) x) ∧
∀ t > putnam_1972_b2_solution s v, ¬(∃ x : ℝ → ℝ, valid t x) :=
sorry
