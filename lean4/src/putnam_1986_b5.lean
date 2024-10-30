import Mathlib

open  Real Equiv Polynomial Filter Topology MvPolynomial

abbrev putnam_1986_b5_solution : Prop := sorry
-- False
/--
Let $f(x,y,z) = x^2+y^2+z^2+xyz$. Let $p(x,y,z), q(x,y,z)$, $r(x,y,z)$ be polynomials with real coefficients satisfying
\[
f(p(x,y,z), q(x,y,z), r(x,y,z)) = f(x,y,z).
\]
Prove or disprove the assertion that the sequence $p,q,r$ consists of some permutation of $\pm x, \pm y, \pm z$, where the number of minus signs is $0$ or $2$.
-/
theorem putnam_1986_b5
    (f : MvPolynomial (Fin 3) ℝ)
    (perms : Set (Set (MvPolynomial (Fin 3) ℝ)))
    (hf : f = (X 0) ^ 2 + (X 1) ^ 2 + (X 2) ^ 2 + (X 0) * (X 1) * (X 2))
    (hperms : perms = {{X 0, X 1, X 2}, {X 0, -X 1, -X 2}, {-X 0, X 1, -X 2}, {-X 0, -X 1, X 2}}) :
    putnam_1986_b5_solution ↔ (∀ pqr : Fin 3 → MvPolynomial (Fin 3) ℝ,
      (∀ xyz : Fin 3 → ℝ, MvPolynomial.eval (fun i ↦ MvPolynomial.eval xyz (pqr i)) f = MvPolynomial.eval xyz f) →
      ({pqr 0, pqr 1, pqr 2} ∈ perms)) :=
  sorry
