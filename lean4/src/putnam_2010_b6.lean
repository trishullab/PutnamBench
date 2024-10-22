import Mathlib

open Filter Topology Set

/--
Let $A$ be an $n \times n$ matrix of real numbers for some $n \geq 1$. For each positive integer $k$, let $A^{[k]}$ be the matrix obtained by raising each entry to the $k$th power. Show that if $A^k=A^{[k]}$ for $k=1,2,\dots,n+1$, then $A^k=A^{[k]}$ for all $k \geq 1$.
-/
theorem putnam_2010_b6
(n : ℕ)
(npos : n ≥ 1)
(A : Matrix (Fin n) (Fin n) ℝ)
(Apow : ℕ → Matrix (Fin n) (Fin n) ℝ)
(hApow : ∀ k > 0, Apow k = (fun i j : Fin n => (A i j) ^ k))
: (∀ k ∈ Set.Icc 1 (n + 1), A ^ k = Apow k) → (∀ k ≥ 1, A ^ k = Apow k) :=
sorry
