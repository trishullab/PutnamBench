import Mathlib
open BigOperators

open Matrix Function

abbrev putnam_2012_a5_solution : Set (ℕ × ℕ) := sorry
-- {q | let ⟨n, _⟩ := q; n = 1} ∪ {(2,2)}
theorem putnam_2012_a5
(n p : ℕ)
(hn : n > 0)
(hp : Nat.Prime p)
{F : Type*} [Field F] [Fintype F]
(hK : Fintype.card F = p)
(G : Matrix (Fin n) (Fin n) F → (Fin n → F) → (Fin n → F) → (Fin n → F))
(hG : ∀ M : Matrix (Fin n) (Fin n) F, ∀ v x : (Fin n → F), G M v x = v + mulVec M x)
: (n, p) ∈ putnam_2012_a5_solution ↔
∃ M : Matrix (Fin n) (Fin n) F,
∃ v : (Fin n → F),
¬(∃ i j : Finset.range (p^n), i ≠ j ∧ (G M v)^[i + 1] 0 = (G M v)^[j + 1] 0) :=
sorry
