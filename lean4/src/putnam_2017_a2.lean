import Mathlib

open Polynomial

/--
Let $Q_0(x)=1$, $Q_1(x)=x$, and $Q_n(x)=\frac{(Q_{n-1}(x))^2-1}{Q_{n-2}(x)}$ for all $n \geq 2$. Show that, whenever $n$ is a positive integer, $Q_n(x)$ is equal to a polynomial with integer coefficients.
-/
theorem putnam_2017_a2
    (Q : ℕ → RatFunc ℚ)
    (hQbase : Q 0 = 1 ∧ Q 1 = (X : ℚ[X]))
    (hQn : ∀ n, Q (n + 2) = (Q (n + 1) ^ 2 - 1) / Q n)
    (n : ℕ) (hn : 0 < n) :
    ∃ P : ℤ[X], Q n = P.map (Int.castRingHom ℚ) :=
  sorry
