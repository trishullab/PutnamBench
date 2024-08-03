import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1997_b1_solution : ℕ → ℝ := sorry
-- fun n => n
noncomputable def dist_to_int : ℝ → ℝ := fun r => |r - round r|
theorem putnam_1997_b1
(F : ℕ → ℝ)
(hF : F = fun (n : ℕ) => ∑ m in Finset.Icc 1 (6 * n - 1), min (dist_to_int (m/(6*n)) ) (dist_to_int (m/(3*n))))
: ∀ n, n > 0 → F n = putnam_1997_b1_solution n :=
sorry
