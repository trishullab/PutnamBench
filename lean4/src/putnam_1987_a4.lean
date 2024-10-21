import Mathlib

open MvPolynomial Real

noncomputable abbrev putnam_1987_a4_solution : ℂ := sorry
-- (5 / 3) * sqrt 30
/--
Let $P$ be a polynomial, with real coefficients, in three variables and $F$ be a function of two variables such that
\[
P(ux, uy, uz) = u^2 F(y-x,z-x) \quad \mbox{for all real $x,y,z,u$},
\]
and such that $P(1,0,0)=4$, $P(0,1,0)=5$, and $P(0,0,1)=6$. Also let $A,B,C$ be complex numbers with $P(A,B,C)=0$ and $|B-A|=10$. Find $|C-A|$.
-/
theorem putnam_1987_a4
(P : MvPolynomial (Fin 3) ℂ)
(hPreal : ∀ i : Fin 3 →₀ ℕ, (coeff i P).im = 0)
(F : ℝ → ℝ → ℝ)
(vars : ℂ → ℂ → ℂ → (Fin 3 → ℂ))
(hvars : vars = fun a b c ↦ fun i ↦ ite (i = 0) a (ite (i = 1) b c))
(h : ∀ x y z u : ℝ, eval (vars (u * x) (u * y) (u * z)) P = u ^ 2 * F (y - x) (z - x))
(hPval : eval (vars 1 0 0) P = 4 ∧ eval (vars 0 1 0) P = 5 ∧ eval (vars 0 0 1) P = 6)
(A B C : ℂ)
(hPABC : eval (vars A B C) P = 0)
(habs : ‖B - A‖ = 10)
: (‖C - A‖ = putnam_1987_a4_solution) :=
sorry
