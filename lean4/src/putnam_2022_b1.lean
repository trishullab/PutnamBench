import Mathlib
open BigOperators

open Polynomial

/--
Suppose that $P(x)=a_1x+a_2x^2+\cdots+a_nx^n$ is a polynomial with integer coefficients, with $a_1$ odd. Suppose that $e^{P(x)}=b_0+b_1x+b_2x^2+\dots$ for all $x$. Prove that $b_k$ is nonzero for all $k \geq 0$.
-/
theorem putnam_2022_b1
(n : ℕ)
(P : Polynomial ℝ)
(B : Polynomial ℝ)
(npos : n ≥ 1)
(Pconst : P.coeff 0 = 0)
(Pdegree : P.degree = n)
(Pint : ∀ k : Set.Icc 1 n, P.coeff k = round (P.coeff k))
(Podd : Odd (round (P.coeff 1)))
(hB : ∀ x : ℝ, Real.exp (P.eval x) = B.eval x)
: ∀ k : ℕ, B.coeff k ≠ 0 :=
sorry
