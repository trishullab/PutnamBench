import Mathlib

open Nat Set

/--
Let $H$ be an $n \times n$ matrix all of whose entries are $\pm 1$ and whose rows are mutually orthogonal. Suppose $H$ has an $a \times b$ submatrix whose entries are all $1$. Show that $ab \leq n$.
-/
theorem putnam_2005_a4
(n : ℕ)
(H : Matrix (Fin n) (Fin n) ℝ)
(a b : ℕ)
(S : Matrix (Fin a) (Fin b) ℝ)
(npos : n ≥ 1)
(Hentries : ∀ i j : Fin n, H i j = 1 ∨ H i j = -1)
(Hortho : H.HasOrthogonalRows)
(hab : 1 ≤ a ∧ a ≤ n ∧ 1 ≤ b ∧ b ≤ n)
(Ssub : ∃ (rri : Fin a → Fin n) (cri : Fin b → Fin n), rri.Injective ∧ cri.Injective ∧ S = H.submatrix rri cri)
(Sentries : ∀ (i : Fin a) (j : Fin b), S i j = 1)
: a * b ≤ n :=
sorry
