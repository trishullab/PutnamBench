import Mathlib

abbrev putnam_2020_a1_solution : ℕ := sorry
-- 508536
/--
Find the number of positive integers $N$ satisfying: (i) $N$ is divisible by $2020$, (ii) $N$ has at most $2020$ decimal digits, (iii) The decimal digits of $N$ are a string of consecutive ones followed by a string of consecutive zeros.
-/
theorem putnam_2020_a1
: Set.ncard {x : ℕ | (2020 ∣ x) ∧ (Nat.log 10 x) + 1 ≤ 2020 ∧ (∃ k l, k ≥ l ∧ x = ∑ i ∈ Finset.range (k-l+1), 10 ^ (i+l))} = putnam_2020_a1_solution :=
sorry
