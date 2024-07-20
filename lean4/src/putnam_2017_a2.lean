import Mathlib
open BigOperators

theorem putnam_2017_a2
(Q : ℕ → ℝ → ℝ)
(hQbase : ∀ x : ℝ, Q 0 x = 1 ∧ Q 1 x = x)
(hQn : ∀ n ≥ 2, ∀ x : ℝ, Q n x = ((Q (n - 1) x) ^ 2 - 1) / Q (n - 2) x)
: ∀ n > 0, ∃ P : Polynomial ℝ, (∀ i : ℕ, P.coeff i = round (P.coeff i)) ∧ Q n = P.eval :=
sorry
