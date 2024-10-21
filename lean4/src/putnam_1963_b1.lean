import Mathlib

open Topology Filter Polynomial

abbrev putnam_1963_b1_solution : ℤ := sorry
-- 2
/--
For what integer $a$ does $x^2-x+a$ divide $x^{13}+x+90$?
-/
theorem putnam_1963_b1
: ∀ a : ℤ, (X^2 - X + (C a)) ∣ (X ^ 13 + X + (C 90)) ↔ a = putnam_1963_b1_solution :=
sorry
