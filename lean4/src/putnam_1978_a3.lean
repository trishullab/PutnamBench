import Mathlib
open BigOperators

open Set

abbrev putnam_1978_a3_solution : ℕ := sorry
-- 2
theorem putnam_1978_a3
(p : Polynomial ℝ)
(hp : p = 2 * (X ^ 6 + 1) + 4 * (X ^ 5 + X) + 3 * (X ^ 4 + X ^ 2) + 5 * X ^ 3)
(I : ℕ → ℝ)
(hI : I = fun k ↦ ∫ x in Ioi 0, x ^ k / p.eval x)
: (putnam_1978_a3_solution ∈ Ioo 0 5 ∧ ∀ k ∈ Ioo 0 5, I putnam_1978_a3_solution ≤ I k) :=
sorry
