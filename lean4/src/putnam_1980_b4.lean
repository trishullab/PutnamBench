import Mathlib

/--
Let $X$ be a finite set with at least $10$ elements; for each $i \in \{0, 1, ..., 1065\}$, let $A_i \subseteq X$ satisfy $|A_i| > \frac{1}{2}|X|$. Prove that there exist $10$ elements $x_1, x_2, \dots, x_{10} \in X$ such that each $A_i$ contains at least one of $x_1, x_2, \dots, x_{10}$.
-/
theorem putnam_1980_b4
{T : Type}
(X : Finset T)
(A : Fin 1066 → Finset T)
(hX : X.card ≥ 10)
(hA : ∀ i : Fin 1066, A i ⊆ X ∧ (A i).card > ((1 : ℚ)/2) * X.card)
: ∃ Y : Finset T, Y ⊆ X ∧ Y.card = 10 ∧ ∀ i : Fin 1066, ∃ y ∈ Y, y ∈ A i :=
sorry
