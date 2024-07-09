import Mathlib
open BigOperators

open Nat Filter Topology Real Polynomial

theorem putnam_1983_b6
(n : ℕ)
(npos : n > 0)
(α : ℂ)
(hα : α ^ (2 ^ n + 1) - 1 = 0 ∧ α ≠ 1)
: (∃ p q : Polynomial ℤ, (aeval α p) ^ 2 + (aeval α q) ^ 2 = -1) :=
sorry
