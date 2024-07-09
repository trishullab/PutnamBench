import Mathlib
open BigOperators

open Topology Filter Polynomial Set

theorem putnam_2001_b5
(a b : ℝ)
(g : ℝ → ℝ)
(abint : 0 < a ∧ a < 1 / 2 ∧ 0 < b ∧ b < 1 / 2)
(gcont : Continuous g)
(hg : ∀ x : ℝ, g (g x) = a * g x + b * x)
: ∃ c : ℝ, ∀ x : ℝ, g x = c * x :=
sorry
