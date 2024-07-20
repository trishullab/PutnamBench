import Mathlib
open BigOperators

open Set Filter Topology

theorem putnam_1988_a5
: (∃ f : ℝ → ℝ, (∀ x > 0, f (f x) = 6 * x - f x ∧ f x > 0) ∧ (∀ g : ℝ → ℝ, (∀ x > 0, g (g x) = 6 * x - g x ∧ g x > 0) → (∀ x > 0, f x = g x))) :=
sorry
