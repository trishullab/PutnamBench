import Mathlib
open BigOperators

open Nat

theorem putnam_1983_a4
(k : ℕ)
(kpos : k > 0)
(m : ℕ := 6 * k - 1)
(S : ℤ := ∑ j in Finset.Icc 1 (2 * k - 1), (-1) ^ (j + 1) * choose m (3 * j - 1))
: (S ≠ 0) :=
sorry
