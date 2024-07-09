import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_b1
(n : ℕ)
(hnpos : n > 0)
(hn : 24 ∣ (n + 1 : ℤ))
: 24 ∣ ∑ d in divisors n, (d : ℤ) :=
sorry
