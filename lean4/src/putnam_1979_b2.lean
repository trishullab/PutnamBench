import Mathlib
open BigOperators

open Set Topology Filter

noncomputable abbrev putnam_1979_b2_solution : ℝ × ℝ → ℝ := sorry
-- fun (a, b) => (Real.exp (-1))*(b^b/a^a)^(1/(b-a))
theorem putnam_1979_b2
: ∀ a b : ℝ, 0 < a ∧ a < b → Tendsto (fun t : ℝ => (∫ x in Icc 0 1, (b*x + a*(1 - x))^t)^(1/t)) (𝓝[≠] 0) (𝓝 (putnam_1979_b2_solution (a, b))) :=
sorry
