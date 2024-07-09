import Mathlib
open BigOperators

open Set MvPolynomial

theorem putnam_1971_b3
(T : ℝ)
(hT : T > 0)
: MeasureTheory.volume {t : ℝ | t ≥ T ∧ Nat.floor t = 2 * (Nat.floor (t - T))} = 1 :=
sorry
