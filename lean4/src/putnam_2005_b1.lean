import Mathlib
open BigOperators

open Nat Set

-- Note: There might be multiple possible correct answers.
noncomputable abbrev putnam_2005_b1_solution : MvPolynomial (Fin 2) ℝ := sorry
-- (MvPolynomial.X 1 - 2 * MvPolynomial.X 0) * (MvPolynomial.X 1 - 2 * MvPolynomial.X 0 - 1)
theorem putnam_2005_b1
: putnam_2005_b1_solution ≠ 0 ∧ ∀ a : ℝ, MvPolynomial.eval (fun n : Fin 2 => if (n = 0) then (Int.floor a : ℝ) else (Int.floor (2 * a))) putnam_2005_b1_solution = 0 :=
sorry
