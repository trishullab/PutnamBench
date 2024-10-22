import Mathlib

open Filter Topology Nat

/--
Let $S$ be a set of $2 \times 2$ integer matrices whose entries $a_{ij}$ (1) are all squares of integers, and, (2) satisfy $a_{ij} \leq 200$. Show that if $S$ has more than $50387$ ($=15^4-15^2-15+2$) elements, then it has two elements that commute.
-/
theorem putnam_1990_b3
(S : Set (Matrix (Fin 2) (Fin 2) ℕ))
(hS : ∀ A ∈ S, ∀ i j : Fin 2, (∃ x : ℤ, A i j = x ^ 2) ∧ A i j ≤ 200)
: (S.encard > 50387) → (∃ A ∈ S, ∃ B ∈ S, A ≠ B ∧ A * B = B * A) :=
sorry
