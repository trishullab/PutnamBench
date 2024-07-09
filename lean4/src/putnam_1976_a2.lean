import Mathlib
open BigOperators

open MvPolynomial

theorem putnam_1976_a2
(P : MvPolynomial (Fin 2) ℤ := (X 0)^2*(X 1) + (X 0)*(X 1)^2)
(Q : MvPolynomial (Fin 2) ℤ := (X 0)^2 + (X 0)*(X 1) + (X 2)^2)
(F : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n - (X 0)^n - (X 1)^n)
(G : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n + (X 0)^n + (X 1)^n)
(i : Fin 2 → MvPolynomial (Fin 2) ℤ := fun j : Fin 2 => ite (j = 0) P Q)
: ∀ n : ℕ, n > 0 → ∃ A : MvPolynomial (Fin 2) ℤ, F n = aeval i A ∨ G n = aeval i A :=
sorry
