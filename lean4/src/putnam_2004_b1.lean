import Mathlib

open Nat Topology Filter

/--
Let $P(x)=c_nx^n+c_{n-1}x^{n-1}+\cdots+c_0$ be a polynomial with integer coefficients. Suppose that $r$ is a rational number such that $P(r)=0$. Show that the $n$ numbers $c_nr,\,c_nr^2+c_{n-1}r,\,c_nr^3+c_{n-1}r^2+c_{n-2}r,\dots,\,c_nr^n+c_{n-1}r^{n-1}+\cdots+c_1r$ are integers.
-/
theorem putnam_2004_b1
(n : ℕ)
(P : Polynomial ℤ)
(r : ℚ)
(Pdeg : P.degree = n)
(Preq0 : Polynomial.aeval r P = 0)
: ∀ i ∈ Finset.range n, ∃ m : ℤ, m = ∑ j ∈ Finset.range (i + 1), (P.coeff (n - j) * r ^ (i + 1 - j)) :=
sorry
