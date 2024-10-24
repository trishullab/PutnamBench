import Mathlib

open scoped Matrix

/--
Let $G$ be a group, with operation $*$. Suppose that \begin{enumerate} \item[(i)] $G$ is a subset of $\mathbb{R}^3$ (but $*$ need not be related to addition of vectors); \item[(ii)] For each $\mathbf{a},\mathbf{b} \in G$, either $\mathbf{a}\times \mathbf{b} = \mathbf{a}*\mathbf{b}$ or $\mathbf{a}\times \mathbf{b} = 0$ (or both), where $\times$ is the usual cross product in $\mathbb{R}^3$. \end{enumerate} Prove that $\mathbf{a} \times \mathbf{b} = 0$ for all $\mathbf{a}, \mathbf{b} \in G$.
-/
theorem putnam_2010_a5
    (G : Type*) [Group G]
    (i : G ↪ (Fin 3 → ℝ))
    (h : ∀ a b, (i a) ×₃ (i b) = i (a * b) ∨ (i a) ×₃ (i b) = 0)
    (a b : G) :
    (i a) ×₃ (i b) = 0 :=
  sorry
