import Mathlib

open Set Real Filter Topology Polynomial

noncomputable abbrev putnam_1978_b5_solution : Polynomial ℝ := sorry
-- 4 * X ^ 4 - 4 * X ^ 2 + 1
/--
Find the real polynomial $p(x)$ of degree $4$ with largest possible coefficient of $x^4$ such that $p([-1, 1]) \subseteq [0, 1]$.
-/
theorem putnam_1978_b5
(S : Set (Polynomial ℝ))
(hS : S = {p : Polynomial ℝ | p.degree = 4 ∧ ∀ x ∈ Icc (-1) 1, p.eval x ∈ Icc 0 1})
: (putnam_1978_b5_solution ∈ S ∧ (∀ p ∈ S, p.coeff 4 ≤ putnam_1978_b5_solution.coeff 4)) :=
sorry
