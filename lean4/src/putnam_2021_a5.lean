import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_2021_a5_solution : Set ℕ := sorry
-- {j : ℕ | ¬(42 ∣ j) ∧ ¬(46 ∣ j)}
theorem putnam_2021_a5
(j : ℕ)
(A : Finset ℕ)
(S : ℕ → ℕ)
(hA : A = {n : ℕ | 1 ≤ n ∧ n ≤ 2021 ∧ Nat.gcd n 2021 = 1})
(hS : ∀ j' : ℕ, S j' = ∑ n in A, n ^ j')
: (2021 ∣ S j) ↔ j ∈ putnam_2021_a5_solution :=
sorry
