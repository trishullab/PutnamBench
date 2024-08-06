import Mathlib
open BigOperators

open Nat Set MeasureTheory Topology Filter

abbrev putnam_1973_a2_solution : Prop := sorry
-- True
theorem putnam_1973_a2
(L : List ℝ)
(hL : L.length = 8 ∧ ∀ i : Fin L.length, L[i] = 1 ∨ L[i] = -1)
(pluses : ℕ)
(hpluses : pluses = {i : Fin L.length | L[i] = 1}.ncard)
(S : ℕ → ℝ)
(hS : S = fun n : ℕ ↦ ∑ i in Finset.Icc 1 n, L[i % 8]/i)
: (pluses = 4 → ∃ l : ℝ, Tendsto S atTop (𝓝 l)) ∧ (putnam_1973_a2_solution ↔ ((∃ l : ℝ, Tendsto S atTop (𝓝 l)) → pluses = 4)) :=
sorry
