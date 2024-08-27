import Mathlib
open BigOperators

theorem putnam_1968_a2
(a b c d e f : ℤ)
(ε : ℝ)
(hne : a * d ≠ b * c)
(hε : ε > 0)
: ∃ r s : ℚ, (|r * a + s * b - e| : ℝ) ∈ Set.Ioo 0 ε ∧ (|r * c + s * d - f| : ℝ) ∈ Set.Ioo 0 ε :=
sorry
