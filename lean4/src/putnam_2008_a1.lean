import Mathlib
open BigOperators

theorem putnam_2008_a1
(f : ℝ → ℝ → ℝ)
(hf : ∀ x y z : ℝ, f x y + f y z + f z x = 0)
: ∃ g : ℝ → ℝ, ∀ x y : ℝ, f x y = g x - g y :=
sorry
