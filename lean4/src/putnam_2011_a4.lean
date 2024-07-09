import Mathlib
open BigOperators

open Topology Filter Matrix

abbrev putnam_2011_a4_solution : Set ℕ := sorry
-- {n : ℕ | Odd n}
theorem putnam_2011_a4
(n : ℕ)
(nmat : Prop)
(npos : n > 0)
(hnmat : ∃ A : Matrix (Fin n) (Fin n) ℤ, (∀ r : Fin n, Even ((A r) ⬝ᵥ (A r))) ∧ (∀ r1 r2 : Fin n, r1 ≠ r2 → Odd ((A r1) ⬝ᵥ (A r2))))
: nmat ↔ n ∈ putnam_2011_a4_solution :=
sorry
