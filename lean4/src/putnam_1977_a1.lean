import Mathlib

noncomputable abbrev putnam_1977_a1_solution : ℝ := sorry
-- -7 / 8
/--
Show that if four distinct points of the curve $y = 2x^4 + 7x^3 + 3x - 5$ are collinear, then their average $x$-coordinate is some constant $k$. Find $k$.
-/
theorem putnam_1977_a1
(y : ℝ → ℝ)
(hy : y = fun x ↦ 2 * x ^ 4 + 7 * x ^ 3 + 3 * x - 5)
(S : Finset ℝ)
(hS : S.card = 4)
: (Collinear ℝ {P : Fin 2 → ℝ | P 0 ∈ S ∧ P 1 = y (P 0)} → (∑ x ∈ S, x) / 4 = putnam_1977_a1_solution) :=
sorry
