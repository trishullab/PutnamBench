import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1994_b1_solution : Set ℤ := sorry
-- {n : ℤ | (315 ≤ n ∧ n ≤ 325) ∨ (332 ≤ n ∧ n ≤ 350)}
theorem putnam_1994_b1
(n : ℤ)
(nwithin : Prop)
(hnwithin : nwithin = ({m : ℕ | |n - m ^ 2| ≤ 250}.encard = 15))
: (n > 0 ∧ nwithin) ↔ n ∈ putnam_1994_b1_solution :=
sorry
