import Mathlib

open Finset Polynomial

abbrev putnam_1968_a6_solution : Set ℂ[X] := sorry
-- {X - 1, -(X - 1), X + 1, -(X + 1), X^2 + X - 1, -(X^2 + X - 1), X^2 - X - 1, -(X^2 - X - 1), X^3 + X^2 - X - 1, -(X^3 + X^2 - X - 1), X^3 - X^2 - X + 1, -(X^3 - X^2 - X + 1)}
/--
Find all polynomials of the form $\sum_{0}^{n} a_{i} x^{n-i}$ with $n \ge 1$ and $a_i = \pm 1$ for all $0 \le i \le n$ whose roots are all real.
-/
theorem putnam_1968_a6
: {P : ℂ[X] | P.natDegree ≥ 1 ∧ (∀ k ∈ Set.Icc 0 P.natDegree, P.coeff k = 1 ∨ P.coeff k = -1) ∧
∀ z : ℂ, P.eval z = 0 → ∃ r : ℝ, r = z} = putnam_1968_a6_solution :=
sorry
