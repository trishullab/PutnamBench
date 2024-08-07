import Mathlib
open BigOperators

theorem putnam_1962_a6
(S : Set ℚ)
(hSadd : ∀ a ∈ S, ∀ b ∈ S, a + b ∈ S)
(hSprod : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(hScond : ∀ r : ℚ, (r ∈ S ∨ -r ∈ S ∨ r = 0) ∧ ¬(r ∈ S ∧ -r ∈ S) ∧ ¬(r ∈ S ∧ r = 0) ∧ ¬(-r ∈ S ∧ r = 0))
: S = { r : ℚ | r > 0 } :=
sorry
