import Mathlib
open BigOperators

theorem putnam_1980_b4
{T : Type}
(X : Finset T)
(A : Fin 1066 → Finset T)
(hX : X.card ≥ 10)
(hA : ∀ i : Fin 1066, A i ⊆ X ∧ (A i).card > ((1 : ℚ)/2) * X.card)
: ∃ Y : Finset T, Y ⊆ X ∧ Y.card = 10 ∧ ∀ i : Fin 1066, ∃ y ∈ Y, y ∈ A i :=
sorry
