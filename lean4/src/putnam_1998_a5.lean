import Mathlib
open BigOperators

open Set Function Metric

theorem putnam_1998_a5
(k : ℕ)
(c : Fin k → (ℝ × ℝ))
(r : Fin k → ℝ)
(hr : ∀ i : Fin k, r i > 0)
(E : Set (ℝ × ℝ))
(hE : E ⊆ ⋃ i : Fin k, ball (c i) (r i))
: ∃ (n : ℕ) (t : Fin n → Fin k), (∀ i j : Fin n, i ≠ j → (ball (c (t i)) (r (t i)) ∩ ball (c (t j)) (r (t j)) = ∅)) ∧ E ⊆ ⋃ i : Fin n, ball (c (t i)) (3 * (r (t i))) :=
sorry
