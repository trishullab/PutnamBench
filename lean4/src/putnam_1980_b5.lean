import Mathlib
open BigOperators

open Set

abbrev putnam_1980_b5_solution : ℝ → Prop := sorry
-- fun t : ℝ => 1 ≥ t
theorem putnam_1980_b5
(T : Set ℝ)
(hT : T = Icc 0 1)
(P : ℝ → (ℝ → ℝ) → Prop)
(Convex : (ℝ → ℝ) → Prop)
(S : ℝ → Set (ℝ → ℝ))
(hP : P = fun t : ℝ => fun f : ℝ → ℝ => f 1 - 2*f (2/3) + f (1/3) ≥ t*(f (2/3) - 2*f (1/3) + f 0))
(hConvex : Convex = fun f : ℝ → ℝ => ∀ u ∈ T, ∀ v ∈ T, ∀ s ∈ T, f (s*u + (1 - s)*v) ≤ s*(f u) + (1 - s)*(f v))
(hS : S = fun t : ℝ => {f : ℝ → ℝ | (∀ x ∈ T, f x ≥ 0) ∧ StrictMonoOn f T ∧ Convex f ∧ ContinuousOn f T ∧ P t f})
: ∀ t : ℝ, t ≥ 0 → ((∀ f ∈ S t, ∀ g ∈ S t, f * g ∈ S t) ↔ putnam_1980_b5_solution t) :=
sorry
