import Mathlib

open Set Filter Topology Real Polynomial Function

/--
Let $G$ be a finite set of real $n\times n$ matrices $\{M_i\}$, $1 \leq i \leq r$, which form a group under matrix
multiplication. Suppose that $\sum_{i=1}^r \mathrm{tr}(M_i)=0$, where $\mathrm{tr}(A)$ denotes the trace of the matrix $A$. Prove that $\sum_{i=1}^r M_i$ is the $n \times n$ zero matrix.
-/
theorem putnam_1985_b6
(n : ℕ)
(npos : n > 0)
(G : Finset (Matrix (Fin n) (Fin n) ℝ))
(groupG : (∀ g ∈ G, ∀ h ∈ G, g * h ∈ G) ∧ 1 ∈ G ∧ (∀ g ∈ G, ∃ h ∈ G, g * h = 1))
(hG : ∑ M ∈ G, Matrix.trace M = 0)
: (∑ M ∈ G, M = 0) :=
sorry
