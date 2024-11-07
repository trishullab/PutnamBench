import Mathlib

open Filter Topology Real Nat

/--
For a partition $\pi$ of $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$, let $\pi(x)$ be the number of elements in the part containing $x$. Prove that for any two partitions $\pi$ and $\pi'$, there are two distinct numbers $x$ and $y$ in $\{1, 2, 3, 4, 5, 6, 7, 8, 9\}$ such that $\pi(x) = \pi(y)$ and $\pi'(x) = \pi'(y)$. [A {\em partition} of a set $S$ is a collection of disjoint subsets (parts) whose union is $S$.]
-/
theorem putnam_1995_b1
  (Pi : Finpartition (Finset.range 9) → (Finset.range 9) → ℕ)
  (Pi_def : ∀ partition k, Pi partition k = (Exists.choose (Finpartition.exists_mem partition k.2)).card) :
  ∀ Pt1 Pt2,
    ∃ x y : Finset.range 9,
      x ≠ y ∧
      Pi Pt1 x = Pi Pt1 y ∧
      Pi Pt2 x = Pi Pt2 y :=
sorry
