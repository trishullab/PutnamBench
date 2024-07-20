import Mathlib
open BigOperators

open Topology Filter

theorem putnam_1966_a4
(a : ℕ → ℤ)
(ha1 : a 1 = 2)
(hai : ∀ n ≥ 1, a (n + 1) = (if ∃ m : ℤ, m^2 = a n + 1 = True then a n + 2 else a n + 1))
: ∀ n ≥ 1, a n = n + round (Real.sqrt n) :=
sorry
