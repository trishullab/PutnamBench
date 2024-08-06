import Mathlib
open BigOperators

open Set Filter Topology Real Polynomial Function

abbrev putnam_1985_b1_solution : Fin 5 → ℤ := sorry
-- fun i ↦ i - 2
theorem putnam_1985_b1
(p : (Fin 5 → ℤ) → (Polynomial ℝ))
(hp : p = fun m ↦ ∏ i : Fin 5, ((X : Polynomial ℝ) - m i))
(numnzcoeff : Polynomial ℝ → ℕ)
(hnumnzcoeff : numnzcoeff = fun p ↦ {j ∈ Finset.range (p.natDegree + 1) | coeff p j ≠ 0}.ncard)
: (Injective putnam_1985_b1_solution ∧ ∀ m : Fin 5 → ℤ, Injective m → numnzcoeff (p putnam_1985_b1_solution) ≤ numnzcoeff (p m)) :=
sorry
