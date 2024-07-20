import Mathlib
open BigOperators

open Polynomial Filter Topology Real Set Nat List

noncomputable abbrev putnam_2016_b1_solution : ℝ := sorry
-- exp 1 - 1
theorem putnam_2016_b1
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hxn : ∀ n : ℕ, x (n + 1) = log (exp (x n) - (x n)))
: (∑' n : ℕ, x n = putnam_2016_b1_solution) :=
sorry
