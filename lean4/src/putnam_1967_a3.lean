import Mathlib
open BigOperators

open Nat Topology Filter

abbrev putnam_1967_a3_solution : ℕ := sorry
-- 5
theorem putnam_1967_a3
(pform pzeros pall : Polynomial ℝ → Prop)
(hpform : pform = (fun p : Polynomial ℝ => p.degree = 2 ∧ ∀ i ∈ Finset.range 3, p.coeff i = round (p.coeff i)))
(hpzeros : pzeros = (fun p : Polynomial ℝ => ∃ z1 z2 : Set.Ioo (0 : ℝ) 1, z1 ≠ z2 ∧ p.eval z1.1 = 0 ∧ p.eval z2.1 = 0))
(hpall : pall = (fun p : Polynomial ℝ => pform p ∧ pzeros p ∧ p.coeff 2 > 0))
: (∃ p : Polynomial ℝ, pall p ∧ p.coeff 2 = putnam_1967_a3_solution) ∧ (∀ p : Polynomial ℝ, pall p → p.coeff 2 ≥ putnam_1967_a3_solution) :=
sorry
