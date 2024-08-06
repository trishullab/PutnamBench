import Mathlib
open BigOperators

open MvPolynomial

theorem putnam_1976_a2
(P Q : MvPolynomial (Fin 2) ℤ)
(hP : P = (X 0)^2*(X 1) + (X 0)*(X 1)^2)
(hQ : Q = (X 0)^2 + (X 0)*(X 1) + (X 2)^2)
(F G : ℕ → MvPolynomial (Fin 2) ℤ)
(hF : F = fun n : ℕ => ((X 0) + (X 1))^n - (X 0)^n - (X 1)^n)
(hG : G = fun n : ℕ => ((X 0) + (X 1))^n + (X 0)^n + (X 1)^n)
(i : Fin 2 → MvPolynomial (Fin 2) ℤ)
(hi : i = fun j : Fin 2 => ite (j = 0) P Q)
: ∀ n : ℕ, n > 0 → ∃ A : MvPolynomial (Fin 2) ℤ, F n = aeval i A ∨ G n = aeval i A :=
sorry
