import Mathlib

open Topology Filter Real

noncomputable abbrev putnam_2017_b4_solution : ℝ := sorry
-- (log 2) ^ 2
/--
Evaluate the sum \begin{gather*} \sum_{k=0}^\infty \left( 3 \cdot \frac{\ln(4k+2)}{4k+2} - \frac{\ln(4k+3)}{4k+3} - \frac{\ln(4k+4)}{4k+4} - \frac{\ln(4k+5)}{4k+5} \right) \ = 3 \cdot \frac{\ln 2}{2} - \frac{\ln 3}{3} - \frac{\ln 4}{4} - \frac{\ln 5}{5} + 3 \cdot \frac{\ln 6}{6} - \frac{\ln 7}{7} \ - \frac{\ln 8}{8} - \frac{\ln 9}{9} + 3 \cdot \frac{\ln 10}{10} - \cdots . \end{gather*} (As usual, $\ln x$ denotes the natural logarithm of $x$.)
-/
theorem putnam_2017_b4 :
  (∑' k : ℕ, (3 * log (4 * k + 2) / (4 * k + 2) - log (4 * k + 3) / (4 * k + 3) - log (4 * k + 4) / (4 * k + 4) - log (4 * k + 5) / (4 * k + 5)) = putnam_2017_b4_solution) :=
sorry
