import Mathlib
open BigOperators

open  Real Equiv Polynomial Filter Topology MvPolynomial

abbrev putnam_1986_b5_solution : Prop := sorry
-- False
theorem putnam_1986_b5
(f : MvPolynomial (Fin 3) ℝ)
(hf : f = (X 0) ^ 2 + (X 1) ^ 2 + (X 2) ^ 2 + (X 0) * (X 1) * (X 2))
(perms : Set (Set (MvPolynomial (Fin 3) ℝ)))
(hperms : perms = {{X 0, X 1, X 2}, {X 0, -X 1, -X 2}, {-X 0, X 1, -X 2}, {-X 0, -X 1, X 2}})
: ((∀ pqr : Fin 3 → MvPolynomial (Fin 3) ℝ, (∀ xyz : Fin 3 → ℝ, MvPolynomial.eval (fun i ↦ MvPolynomial.eval xyz (pqr i)) f = MvPolynomial.eval xyz f) → ({pqr 0, pqr 1, pqr 2} ∈ perms)) ↔ putnam_1986_b5_solution) :=
sorry
