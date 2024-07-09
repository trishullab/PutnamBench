import Mathlib
open BigOperators

open Topology Filter Polynomial Set

abbrev putnam_2001_b4_solution : Prop := sorry
-- True
theorem putnam_2001_b4
(S : Set ℚ)
(hS : S = univ \ {-1, 0, 1})
(f : S → S)
(hf : ∀ x : S, f x = x - 1 / (x : ℚ))
: ⋂ n ∈ Ici 1, f^[n] '' univ = ∅ ↔ putnam_2001_b4_solution :=
sorry
