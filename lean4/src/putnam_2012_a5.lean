import Mathlib

open Matrix Function

abbrev putnam_2012_a5_solution : Set (ℕ × ℕ) := sorry
-- {q | let ⟨n, _⟩ := q; n = 1} ∪ {(2,2)}
/--
Let $\FF_p$ denote the field of integers modulo a prime $p$, and let $n$ be a positive integer. Let $v$ be a fixed vector in $\FF_p^n$, let $M$ be an $n \times n$ matrix with entries of $\FF_p$, and define $G: \FF_p^n \to \FF_p^n$ by $G(x) = v + Mx$. Let $G^{(k)}$ denote the $k$-fold composition of $G$ with itself, that is, $G^{(1)}(x) = G(x)$ and $G^{(k+1)}(x) = G(G^{(k)}(x))$. Determine all pairs $p, n$ for which there exist $v$ and $M$ such that the $p^n$ vectors $G^{(k)}(0)$, $k=1,2,\dots,p^n$ are distinct.
-/
theorem putnam_2012_a5
  (n p : ℕ)
  (hn : n > 0)
  (hp : Nat.Prime p)
  {F : Type*} [Field F] [Fintype F]
  (hK : Fintype.card F = p)
  (G : Matrix (Fin n) (Fin n) F → (Fin n → F) → (Fin n → F) → (Fin n → F))
  (hG : ∀ M v x, G M v x = v + mulVec M x) :
  (n, p) ∈ putnam_2012_a5_solution ↔
    ∃ᵉ (M : Matrix (Fin n) (Fin n) F) (v : (Fin n → F)),
      ¬(∃ i j : Finset.range (p^n), i ≠ j ∧ (G M v)^[i + 1] 0 = (G M v)^[j + 1] 0) :=
  sorry
