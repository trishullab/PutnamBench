import Mathlib
open BigOperators

noncomputable abbrev putnam_2018_a3_solution : ℝ := sorry
-- 480/49
theorem putnam_2018_a3
(P : Set (Fin 10 → ℝ))
(f : (Fin 10 → ℝ) → ℝ → ℝ)
(hf : f = fun x => fun k => ∑ i : Fin 10, Real.cos (k * (x i)))
(hP : ∀ x ∈ P, f x 1 = 0)
: ∀ y ∈ P, f y 3 ≤ putnam_2018_a3_solution ∧ ∃ x ∈ P, f x 3 = putnam_2018_a3_solution :=
sorry
