import Mathlib
open BigOperators

open Nat Set MeasureTheory Topology Filter

theorem putnam_1973_b2
(z : ℂ)
(hzrat : ∃ q1 q2 : ℚ, z.re = q1 ∧ z.im = q2)
(hznorm : ‖z‖ = 1)
: ∀ n : ℤ, ∃ q : ℚ, ‖z^(2*n) - 1‖ = q :=
sorry
