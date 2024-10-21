import Mathlib

/--
For all integers $a$, $b$, $c$, $d$, $e$, and $f$ such that $ad \neq bc$ and any real number $\epsilon > 0$, prove that there exist rational numbers $r$ and $s$ such that $$0 < |ra + sb - e| < \varepsilon$$ and $$0 < |rc + sd - f| < \varepsilon.$$
-/
theorem putnam_1968_a2
(a b c d e f : ℤ)
(ε : ℝ)
(hne : a * d ≠ b * c)
(hε : ε > 0)
: ∃ r s : ℚ, (|r * a + s * b - e| : ℝ) ∈ Set.Ioo 0 ε ∧ (|r * c + s * d - f| : ℝ) ∈ Set.Ioo 0 ε :=
sorry
