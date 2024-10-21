import Mathlib

open Set MvPolynomial

/--
If two cars travel around a track at constant speeds of one lap per hour, starting from the same point but at different times, prove that the total amount of time for which the first car has completed exactly twice as many laps as the second is exactly $1$ hour.
-/
theorem putnam_1971_b3
(T : ℝ)
(hT : T > 0)
: MeasureTheory.volume {t : ℝ | t ≥ T ∧ Nat.floor t = 2 * (Nat.floor (t - T))} = 1 :=
sorry
