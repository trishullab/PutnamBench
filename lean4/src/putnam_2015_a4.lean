import Mathlib
open BigOperators

noncomputable abbrev putnam_2015_a4_solution : ℝ := sorry
-- 4 / 7
theorem putnam_2015_a4
(S : ℝ → Set ℤ := fun x ↦ {n : ℤ | n > 0 ∧ Even ⌊n * x⌋})
(f : ℝ → ℝ := fun x ↦ ∑' n : S x, 1 / 2 ^ (n : ℤ))
(p : ℝ → Prop := fun l ↦ ∀ x ∈ Set.Ico 0 1, f x ≥ l)
(L : ℝ)
(hpL : p L)
(hLub : ∀ l : ℝ, p l → l ≤ L)
: (L = putnam_2015_a4_solution) :=
sorry
