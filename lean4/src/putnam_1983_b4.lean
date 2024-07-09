import Mathlib
open BigOperators

open Nat Filter Topology Real

theorem putnam_1983_b4
(f : ℕ → ℤ := fun n ↦ n + Int.floor (Real.sqrt n))
(a : ℕ → ℕ)
(ha0 : a 0 > 0)
(han : ∀ n : ℕ, a (n + 1) = f (a n))
: (∃ i : ℕ, ∃ s : ℤ, a i = s ^ 2) :=
sorry
