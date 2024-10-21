import Mathlib

open MvPolynomial Real Nat

abbrev putnam_1987_b1_solution : ℝ := sorry
-- 1
/--
Evaluate
\[
\int_2^4 \frac{\sqrt{\ln(9-x)}\,dx}{\sqrt{\ln(9-x)}+\sqrt{\ln(x+3)}}.
\]
-/
theorem putnam_1987_b1
: (∫ x in (2)..4, sqrt (log (9 - x)) / (sqrt (log (9 - x)) + sqrt (log (x + 3))) = putnam_1987_b1_solution) :=
sorry
