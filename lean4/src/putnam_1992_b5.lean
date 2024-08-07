import Mathlib
open BigOperators

open Topology Filter Nat Function Polynomial

abbrev putnam_1992_b5_solution : Prop := sorry
-- False
theorem putnam_1992_b5
(D : ℕ → ℚ)
(hD : D = fun (n : ℕ) ↦ Matrix.det (fun i j : Fin (n - 1) ↦ ite (i = j) ((i : ℕ) + 3 : ℚ) 1))
: ((Bornology.IsBounded {x | ∃ n ≥ 2, D n / factorial n = x}) ↔ putnam_1992_b5_solution) :=
sorry
