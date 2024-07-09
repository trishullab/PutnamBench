import Mathlib
open BigOperators

open Topology Filter Set Polynomial Function

abbrev putnam_1981_b4_solution : Prop := sorry
-- False
theorem putnam_1981_b4
(VAB : Set (Matrix (Fin 5) (Fin 7) ℝ) → Prop)
(Vrank : Set (Matrix (Fin 5) (Fin 7) ℝ) → ℕ → Prop)
(hVAB : ∀ V : Set (Matrix (Fin 5) (Fin 7) ℝ), VAB V = (∀ A ∈ V, ∀ B ∈ V, ∀ r s : ℝ, r • A + s • B ∈ V))
(hVrank : ∀ (V : Set (Matrix (Fin 5) (Fin 7) ℝ)) (k : ℕ), Vrank V k = ∃ A ∈ V, A.rank = k)
: (∀ V : Set (Matrix (Fin 5) (Fin 7) ℝ), (VAB V ∧ Vrank V 0 ∧ Vrank V 1 ∧ Vrank V 2 ∧ Vrank V 4 ∧ Vrank V 5) → Vrank V 3) ↔ putnam_1981_b4_solution :=
sorry
