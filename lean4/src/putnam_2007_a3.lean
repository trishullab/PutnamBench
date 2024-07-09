import Mathlib
open BigOperators

open Set

abbrev putnam_2007_a3_solution : ℕ → ℚ := sorry
-- fun k ↦ (k)! * (k + 1)! / ((3 * k + 1) * (2 * k)!)
theorem putnam_2007_a3
(k : ℕ)
(kpos : k > 0)
(perms : Set (Fin (3 * k + 1) → ℤ) := {f : Fin (3 * k + 1) → ℤ | ∀ y ∈ Icc 1 (3 * k + 1), ∃! x : Fin (3 * k + 1), f x = y})
(goodperms : Set (Fin (3 * k + 1) → ℤ) := {f ∈ perms | ¬∃ j : Fin (3 * k + 1), 3 ∣ ∑ i : Fin (3 * k + 1), ite (i ≤ j) (f i) 0})
: (goodperms.ncard = perms.ncard * (putnam_2007_a3_solution k)) :=
sorry
