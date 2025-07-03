import Mathlib

open Matrix Filter Topology Set Nat

/--
Let $n$ be a positive integer such that $n+1$ is divisible by $24$. Prove that the sum of all the divisors of $n$ is divisible by $24$.
-/
theorem putnam_1969_b1
(n : ℕ)
(hnpos : n > 0)
(hn : 24 ∣ n + 1)
: 24 ∣ ∑ d ∈ divisors n, d :=
sorry
