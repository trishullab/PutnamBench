import Mathlib

open EuclideanGeometry Topology Filter Complex

abbrev putnam_1965_a5_solution : ℕ → ℕ := sorry
-- fun n => 2^(n - 1)
/--
How many orderings of the integers from $1$ to $n$ satisfy the condition that, for every integer $i$ except the first, there exists some earlier integer in the ordering which differs from $i$ by $1$?
-/
theorem putnam_1965_a5
: ∀ n > 0, {p ∈ permsOfFinset (Finset.Icc 1 n) | ∀ m ∈ Finset.Icc 2 n, ∃ k ∈ Finset.Ico 1 m, p m = p k + 1 ∨ p m = p k - 1}.card = putnam_1965_a5_solution n :=
sorry
