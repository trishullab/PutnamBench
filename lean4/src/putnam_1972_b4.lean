import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

/--
Let $n \geq 2$ be an integer. Show that there exists a polynomial $P(x,y,z)$ with integral coefficients such that $x \equiv P(x^n, x^{n+1}, x + x^{n+2})$.
-/
theorem putnam_1972_b4
(n : ℕ)
(hn : n > 1)
(vars : ℤ → ℤ → ℤ → (Fin 3 → ℤ))
(hvars : vars = fun a b c ↦ fun i ↦ ite (i = 0) a (ite (i = 1) b c))
: ∃ P : MvPolynomial (Fin 3) ℤ, ∀ x : ℤ, x = MvPolynomial.eval (vars (x^n) (x^(n+1)) (x + x^(n+2))) P :=
sorry
