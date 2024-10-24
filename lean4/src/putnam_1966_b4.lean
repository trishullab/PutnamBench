import Mathlib

open Topology Filter

/--
Let $a_1, a_2, ...$ be an increasing sequence of $mn + 1$ positive integers. Prove that there exists either a subset of $m + 1$ $a_i$ such that no element of the subset divides any other, or a subset of $n + 1$ $a_i$ such that each element of the subset (except the greatest) divides the next greatest element.
-/
theorem putnam_1966_b4
(m n : ℕ)
(S : Finset ℕ)
(hS : (∀ i ∈ S, i > 0) ∧ S.card = m * n + 1)
: ∃ T ⊆ S, (T.card = m + 1 ∧ ∀ j ∈ T, ∀ i ∈ T, i ≠ j → ¬(j ∣ i)) ∨ (T.card = n + 1 ∧ ∀ i ∈ T, ∀ j ∈ T, j < i → j ∣ i) :=
sorry
