import Mathlib
open BigOperators

open Set MvPolynomial

theorem putnam_1971_a4
(ε : ℝ)
(hε : 0 < ε ∧ ε < 1)
(P : ℕ → ℝ → MvPolynomial (Fin 2) ℝ)
(hP : P = fun (n : ℕ) (δ : ℝ) => (MvPolynomial.X 0 + MvPolynomial.X 1)^n * ((MvPolynomial.X 0)^2 - (MvPolynomial.C (2 - δ))*(MvPolynomial.X 0)*(MvPolynomial.X 1) + (MvPolynomial.X 1)^2))
: ∃ N : ℕ, ∀ n ≥ N, ∀ i : Fin 2 →₀ ℕ, MvPolynomial.coeff i (P n ε) ≥ 0 :=
sorry
