import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2020_a5_solution : ℤ := sorry
-- (Nat.fib 4040) - 1
theorem putnam_2020_a5
(a : ℤ → ℕ)
(ha : a = fun n : ℤ => {S : Finset ℕ | (∀ k ∈ S, k > 0) ∧ ∑ k : S, Nat.fib k = n}.ncard)
: a putnam_2020_a5_solution = 2020 ∧ ∀ n : ℤ, a n = 2020 → n ≤ putnam_2020_a5_solution :=
sorry
