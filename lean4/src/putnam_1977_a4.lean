import Mathlib
open BigOperators

open RingHom Set

noncomputable abbrev putnam_1977_a4_solution : RatFunc ℝ := sorry
-- RatFunc.X / (1 - RatFunc.X)
theorem putnam_1977_a4
: (∀ x ∈ Ioo 0 1, putnam_1977_a4_solution.eval (id ℝ) x = ∑' n : ℕ, x ^ 2 ^ n / (1 - x ^ 2 ^ (n + 1))) :=
sorry
