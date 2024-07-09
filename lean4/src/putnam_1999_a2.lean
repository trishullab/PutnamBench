import Mathlib
open BigOperators

theorem putnam_1999_a2
(p : Polynomial ℝ)
(hp : ∀ x : ℝ, p.eval x ≥ 0)
: ∃ k : ℕ, ∃ f : Fin k → Polynomial ℝ, k > 0 ∧
∀ x : ℝ, p.eval x = ∑ j : Fin k, ((f j).eval x) ^ 2 :=
sorry
