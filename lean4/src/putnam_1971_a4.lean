import Mathlib

open Set MvPolynomial

/--
Show that for $\epsilon \in (0,1)$, the expression $(x + y)^n (x^2 - 2-\epsilon)xy + y^2)$ is a polynomial with positive coefficients for $n$ sufficiently large, where $n$ is an integer.
-/
theorem putnam_1971_a4
(ε : ℝ)
(hε : 0 < ε ∧ ε < 1)
(P : ℕ → ℝ → MvPolynomial (Fin 2) ℝ)
(hP : P = fun (n : ℕ) (δ : ℝ) => (MvPolynomial.X 0 + MvPolynomial.X 1)^n * ((MvPolynomial.X 0)^2 - (MvPolynomial.C (2 - δ))*(MvPolynomial.X 0)*(MvPolynomial.X 1) + (MvPolynomial.X 1)^2))
: ∃ N : ℕ, ∀ n ≥ N, ∀ i : Fin 2 →₀ ℕ, MvPolynomial.coeff i (P n ε) ≥ 0 :=
sorry
