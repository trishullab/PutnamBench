import Mathlib
open BigOperators

open Filter Topology Nat

abbrev putnam_1990_a6_solution : ℕ := sorry
-- 17711
theorem putnam_1990_a6
(STadmiss : (Fin 2 → (Finset (Fin 10))) → Prop)
(hSTadmiss : ∀ ST : Fin 2 → (Finset (Fin 10)), STadmiss ST = ((∀ s ∈ ST 0, (s+1) > (ST 1).card) ∧ (∀ t ∈ ST 1, (t+1) > (ST 0).card)))
: {ST : Fin 2 → (Finset (Fin 10)) | STadmiss ST}.encard = putnam_1990_a6_solution :=
sorry
