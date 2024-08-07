import Mathlib
open BigOperators

noncomputable abbrev putnam_2015_a4_solution : ℝ := sorry
-- 4 / 7
theorem putnam_2015_a4
(S : ℝ → Set ℤ)
(f : ℝ → ℝ)
(p : ℝ → Prop)
(hS : S = fun (x : ℝ) ↦ {n : ℤ | n > 0 ∧ Even ⌊n * x⌋})
(hf : f = fun (x : ℝ) ↦ ∑' n : S x, 1 / 2 ^ (n : ℤ))
(hp : p = fun (l : ℝ) ↦ ∀ x ∈ Set.Ico 0 1, f x ≥ l)
(L : ℝ)
(hpL : p L)
(hLub : ∀ l : ℝ, p l → l ≤ L)
: (L = putnam_2015_a4_solution) :=
sorry
