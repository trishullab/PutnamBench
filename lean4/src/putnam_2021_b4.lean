import Mathlib
open BigOperators

open Filter Topology

theorem putnam_2021_b4
(F : ℕ → ℕ)
(hF : ∀ x, x ≥ 2 → F x = F (x - 1) + F (x - 2))
(F01 : F 0 = 0 ∧ F 1 = 1)
: ∀ m, m > 2 → (∃ p,  (∏ k : Set.Icc 1 (F m - 1),  (k.1 ^ k.1)) % F m = F p) :=
sorry
