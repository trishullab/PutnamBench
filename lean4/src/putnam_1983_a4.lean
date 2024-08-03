import Mathlib
open BigOperators

open Nat

theorem putnam_1983_a4
(k m : ℕ)
(S : ℤ)
(kpos : k > 0)
(hm : m = 6 * k - 1)
(hS : S = ∑ j in Finset.Icc 1 (2 * k - 1), (-1 : ℤ) ^ (j + 1) * choose m (3 * j - 1))
: (S ≠ 0) :=
sorry
