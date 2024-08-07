import Mathlib
open BigOperators

open Function

theorem putnam_1996_a5
(p : ℕ)
(hpprime : Prime p)
(hpge3 : p > 3)
(k : ℕ)
(hk : k = Nat.floor (2*p/(3 : ℚ)))
: p^2 ∣ ∑ i in Finset.Icc 1 k, Nat.choose p i :=
sorry
