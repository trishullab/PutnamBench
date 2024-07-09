import Mathlib
open BigOperators

theorem putnam_1980_a4
(abcvals : ℤ → ℤ → ℤ → Prop)
(habcvals : ∀ a b c : ℤ, abcvals a b c = (¬(a = 0 ∧ b = 0 ∧ c = 0) ∧ |a| < 1000000 ∧ |b| < 1000000 ∧ |c| < 1000000))
: (∃ a b c : ℤ, abcvals a b c ∧ |a + b * Real.sqrt 2 + c * Real.sqrt 3| < 10 ^ (-(11 : ℝ))) ∧ (∀ a b c : ℤ, abcvals a b c → |a + b * Real.sqrt 2 + c * Real.sqrt 3| > 10 ^ (-(21 : ℝ))) :=
sorry
