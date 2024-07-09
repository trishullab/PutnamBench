import Mathlib
open BigOperators

theorem putnam_1968_a2
(a b c d e f : ℤ)
(ε : ℝ)
(hne : a * d ≠ b * c)
(hε : ε > 0)
(q1 : ℚ := |r * a + s * b - e|)
(q2 : ℚ := |r * c + s * d - f|)
: ∃ r s : ℚ, 0 < q1 ∧ q1 < ε ∧ 0 < q2 ∧ q2 < ε :=
sorry
