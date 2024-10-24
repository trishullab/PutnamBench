import Mathlib

open Polynomial

noncomputable abbrev putnam_1976_a4_solution : (ℝ → ℝ) × (ℝ → ℝ) := sorry
-- (fun r : ℝ => -1/(r + 1), fun r : ℝ => -(r + 1)/r)
/--
Let $r$ be a real root of $P(x) = x^3 + ax^2 + bx - 1$, where $a$ and $b$ are integers and $P$ is irreducible over the rationals. Suppose that $r + 1$ is a root of $x^3 + cx^2 + dx + 1$, where $c$ and $d$ are also integers. Express another root $s$ of $P$ as a function of $r$ that does not depend on the values of $a$, $b$, $c$, or $d$.
-/
theorem putnam_1976_a4
(a b c d : ℤ)
(r : ℝ)
(P Q: Polynomial ℚ)
(hP : P = X^3 + (C (a : ℚ))*X^2 + (C (b : ℚ))*X - (C 1) ∧ aeval r P = 0 ∧ Irreducible P)
(hQ : Q =  X^3 + (C (c : ℚ))*X^2 + (C (d : ℚ))*X + (C 1) ∧ aeval (r + 1) Q = 0)
: ∃ s : ℝ, aeval s P = 0 ∧ (s = putnam_1976_a4_solution.1 r ∨ s = putnam_1976_a4_solution.2 r) :=
sorry
