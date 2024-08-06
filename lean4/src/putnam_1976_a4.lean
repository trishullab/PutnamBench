import Mathlib
open BigOperators

open Polynomial

noncomputable abbrev putnam_1976_a4_solution : (ℝ → ℝ) × (ℝ → ℝ) := sorry
-- (fun r : ℝ => -1/(r + 1), fun r : ℝ => -(r + 1)/r)
theorem putnam_1976_a4
(a b c d : ℤ)
(r : ℝ)
(P Q: Polynomial ℚ)
(hP : P = X^3 + (C (a : ℚ))*X^2 + (C (b : ℚ))*X - (C 1) ∧ aeval r P = 0 ∧ Irreducible P)
(hQ : Q =  X^3 + (C (c : ℚ))*X^2 + (C (d : ℚ))*X + (C 1) ∧ aeval (r + 1) Q = 0)
: ∃ s : ℝ, aeval s P = 0 ∧ (s = putnam_1976_a4_solution.1 r ∨ s = putnam_1976_a4_solution.2 r) :=
sorry
