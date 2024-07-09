import Mathlib
open BigOperators

open Filter Topology Metric

theorem putnam_1999_b2
(P Q : Polynomial ℂ)
(hQ : Q.natDegree = 2)
(hP : ∀ x : ℂ, P.eval x = (Q.eval x) * (Polynomial.derivative^[2] P).eval x)
: (∃ x1 x2 : ℂ, x1 ≠ x2 ∧ P.eval x1 = 0 ∧ P.eval x2 = 0) → (∃ f : Fin (P.natDegree) → ℂ, (∀ i j : Fin (P.natDegree), i ≠ j → f i ≠ f j) ∧ (∀ i : Fin (P.natDegree), P.eval (f i) = 0)) :=
sorry
