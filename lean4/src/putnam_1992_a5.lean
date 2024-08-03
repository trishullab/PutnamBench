import Mathlib
open BigOperators

open Topology Filter Nat Function

theorem putnam_1992_a5
(a : ℕ → ℕ)
(ha : a = fun n ↦ ite (Even {i | (digits 2 n).get i = 1}.ncard) 0 1)
: (¬∃ k > 0, ∃ m > 0, ∀ j ≤ m - 1, a (k + j) = a (k + m + j) ∧ a (k + m + j) = a (k + 2 * m + j)) :=
sorry
