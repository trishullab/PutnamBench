import Mathlib
open BigOperators

open Polynomial Real Complex

noncomputable abbrev putnam_1975_a4_solution : ℕ → Polynomial ℤ := sorry
-- fun m => ∑ j in Finset.range ((m - 1) / 2), Polynomial.X ^ (2 * j + 1)
theorem putnam_1975_a4
(m : ℕ)
(hm : Odd m ∧ m > 1)
(n : ℕ := 2 * m)
(θ : ℂ := cexp (2 * Real.pi * I / n))
: 1/(1 - θ) = Polynomial.aeval θ (putnam_1975_a4_solution m) :=
sorry
