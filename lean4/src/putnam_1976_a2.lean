import Mathlib

open MvPolynomial

/--
Let $P(x, y) = x^2y + xy^2$, $Q(x, y) = x^2 + xy + y^2$, $F_n(x, y) = (x + y)^n - x^n - y^n$, and $G_n(x, y) = (x + y)^n + x^n + y^n$. Prove that for all positive integers $n$, either $F_n$ or $G_n$ can be represented as a polynomial in $P$ and $Q$ with integer coefficients.
-/
theorem putnam_1976_a2
    (P Q : MvPolynomial (Fin 2) ℤ)
    (hP : P = X 0 ^ 2 * X 1 + X 0 * X 1 ^ 2)
    (hQ : Q = X 0 ^ 2 + X 0 * X 1 + X 1 ^ 2)
    (F G : ℕ → MvPolynomial (Fin 2) ℤ)
    (hF : ∀ n, F n = (X 0 + X 1) ^ n - X 0 ^ n - X 1 ^ n)
    (hG : ∀ n, G n = (X 0 + X 1) ^ n + X 0 ^ n + X 1 ^ n)
    (n : ℕ)
    (hn : 0 < n) :
    ∃ A : MvPolynomial (Fin 2) ℤ,
      F n = aeval ![P, Q] A ∨
      G n = aeval ![P, Q] A :=
  sorry
