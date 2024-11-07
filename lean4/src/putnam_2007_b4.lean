import Mathlib

open Set Nat Function

abbrev putnam_2007_b4_solution : ℕ → ℕ := sorry
-- fun n ↦ 2 ^ (n + 1)
/--
Let $n$ be a positive integer. Find the number of pairs $P, Q$ of polynomials with real coefficients such that
\[
(P(X))^2 + (Q(X))^2 = X^{2n} + 1
\]
and $\deg P > \deg Q$.
-/
theorem putnam_2007_b4
(n : ℕ) (npos : n > 0) :
({(P, Q) : (Polynomial ℝ) × (Polynomial ℝ) | P ^ 2 + Q ^ 2 = Polynomial.X ^ (2 * n) + 1 ∧ P.degree > Q.degree}.ncard = putnam_2007_b4_solution n) :=
sorry
