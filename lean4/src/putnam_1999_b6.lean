import Mathlib
open BigOperators

open Filter Topology Metric

theorem putnam_1999_b6
(S : Finset ℤ)
(hSgt : ∀ s : ℤ, s ∈ S → s > 1)
(hSgcd : ∀ n : ℤ, ∃ s : S, Int.gcd s n = 1 ∨ Int.gcd s n = (s : ℤ))
: ∃ s t : S, Prime (Int.gcd s t) :=
sorry
