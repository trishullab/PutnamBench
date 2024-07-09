import Mathlib
open BigOperators

open Topology Filter

theorem putnam_2014_a1
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = (1 - x + x ^ 2) * Real.exp x)
(hfdiff : ContDiff ℝ ⊤ f)
(c : ℕ → ℝ)
(hc : ∀ k : ℕ, c k = taylorCoeffWithin f k Set.univ 0)
: ∀ k : ℕ, c k ≠ 0 → ∃ q : ℚ, c k = q ∧ (q.num = 1 ∨ Prime q.num.natAbs) :=
sorry
