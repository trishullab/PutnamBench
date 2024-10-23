import Mathlib

open Polynomial

/--
Suppose that $P(x)=a_1x+a_2x^2+\cdots+a_nx^n$ is a polynomial with integer coefficients, with $a_1$ odd. Suppose that $e^{P(x)}=b_0+b_1x+b_2x^2+\dots$ for all $x$. Prove that $b_k$ is nonzero for all $k \geq 0$.
-/
theorem putnam_2022_b1
    (P : Polynomial ℤ)
    (b : ℕ → ℝ)
    (Pconst : P.coeff 0 = 0)
    (Podd : Odd (P.coeff 1))
    (hB : ∀ x : ℝ, HasSum (fun i => b i * x ^ i) (Real.exp (aeval x P))) :
    ∀ k : ℕ, b k ≠ 0 :=
  sorry
