import Mathlib

abbrev putnam_2020_a2_solution : ℕ → ℕ := sorry
-- fun k ↦ 4 ^ k
/--
Let $k$ be a nonnegative integer. Evaluate
\[
\sum_{j=0}^k 2^{k-j} \binom{k+j}{j}.
\]
-/
theorem putnam_2020_a2
(k : ℕ)
: (∑ j ∈ Finset.Icc 0 k, 2 ^ (k - j) * Nat.choose (k + j) j = putnam_2020_a2_solution k) :=
sorry
