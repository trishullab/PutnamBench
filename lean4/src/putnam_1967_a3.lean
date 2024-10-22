import Mathlib

open Nat Topology Filter

abbrev putnam_1967_a3_solution : ℕ := sorry
-- 5
/--
Consider polynomial forms $ax^2-bx+c$ with integer coefficients which have two distinct zeros in the open interval $0<x<1$. Exhibit with a proof the least positive integer value of $a$ for which such a polynomial exists.
-/
theorem putnam_1967_a3
(pform pzeros pall : Polynomial ℝ → Prop)
(hpform : ∀ p : Polynomial ℝ, pform p ↔ p.degree = 2 ∧ ∀ i ∈ Finset.range 3, p.coeff i = round (p.coeff i))
(hpzeros : ∀ p, pzeros p ↔ ∃ z1 z2 : Set.Ioo (0 : ℝ) 1, z1 ≠ z2 ∧ p.eval z1.1 = 0 ∧ p.eval z2.1 = 0)
(hpall : ∀ p, pall p ↔ pform p ∧ pzeros p ∧ p.coeff 2 > 0)
: (∃ p : Polynomial ℝ, pall p ∧ p.coeff 2 = putnam_1967_a3_solution) ∧ (∀ p : Polynomial ℝ, pall p → p.coeff 2 ≥ putnam_1967_a3_solution) :=
sorry
