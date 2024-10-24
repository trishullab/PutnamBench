import Mathlib

open Finset Polynomial

abbrev putnam_1968_a5_solution : ℝ := sorry
-- 8
/--
Let $V$ be the set of all quadratic polynomials with real coefficients such that $|P(x)| \le 1$ for all $x \in [0, 1]$. Find the supremum of $|P'(0)|$ across all $P \in V$.
-/
theorem putnam_1968_a5
(V : Set ℝ[X])
(V_def : V = {P : ℝ[X] | P.degree = 2 ∧ ∀ x ∈ Set.Icc 0 1, |P.eval x| ≤ 1})
: sSup {|(derivative P).eval 0| | P ∈ V} = putnam_1968_a5_solution :=
sorry
