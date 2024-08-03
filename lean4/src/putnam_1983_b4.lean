import Mathlib
open BigOperators

open Nat Real

theorem putnam_1983_b4
(f : ℕ → ℤ)
(a : ℕ → ℕ)
(hf : f = fun (n : ℕ) ↦ n + Int.floor (Real.sqrt n))
(ha0 : a 0 > 0)
(han : ∀ n : ℕ, a (n + 1) = f (a n))
: (∃ i : ℕ, ∃ s : ℤ, a i = s ^ 2) :=
sorry
