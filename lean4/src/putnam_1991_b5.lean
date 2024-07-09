import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1991_b5_solution : ℕ → ℕ := sorry
-- (fun p : ℕ => Nat.ceil ((p : ℝ) / 4))
theorem putnam_1991_b5
(p : ℕ)
(podd : Odd p)
(pprime : Prime p)
: ({z : ZMod p | ∃ x : ZMod p, z = x ^ 2} ∩ {z : ZMod p | ∃ y : ZMod p, z = y ^ 2 + 1}).encard = putnam_1991_b5_solution p :=
sorry
