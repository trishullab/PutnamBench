import Mathlib
open BigOperators

open MvPolynomial Set Nat

theorem putnam_2003_b4
(f : ℝ → ℝ)
(a b c d e : ℤ)
(r1 r2 r3 r4 : ℝ)
(ane0 : a ≠ 0)
(hf1 : ∀ z : ℝ, f z = a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e)
(hf2 : ∀ z : ℝ, f z = a * (z - r1) * (z - r2) * (z - r3) * (z - r4))
: (¬Irrational (r1 + r2) ∧ r1 + r2 ≠ r3 + r4) → ¬Irrational (r1 * r2) :=
sorry
