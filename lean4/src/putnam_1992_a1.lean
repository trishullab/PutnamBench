import Mathlib
open BigOperators

open Topology Filter

theorem putnam_1992_a1
(f : ℤ → ℤ)
: ((f = fun n ↦ 1 - n) ↔ (∀ n : ℤ, f (f n) = n) ∧ (∀ n : ℤ, f (f (n + 2) + 2) = n) ∧ (f 0 = 1)) :=
sorry
