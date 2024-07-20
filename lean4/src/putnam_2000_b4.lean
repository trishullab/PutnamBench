import Mathlib
open BigOperators

open Topology Filter Nat Set Function

theorem putnam_2000_b4
(f : ℝ → ℝ)
(hfcont : Continuous f)
(hf : ∀ x : ℝ, f (2 * x ^ 2 - 1) = 2 * x * f x)
: ∀ x : ℝ, x ∈ Icc (-1) 1 → f x = 0 :=
sorry
