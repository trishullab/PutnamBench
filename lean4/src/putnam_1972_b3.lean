import Mathlib

open EuclideanGeometry Filter Topology Set MeasureTheory Metric

/--
Let $A$ and $B$ be two elements in a group such that $ABA = BA^2B$, $A^3 = 1$, and $B^{2n-1} = 1$ for some positive integer $n$. Prove that $B = 1$.
-/
theorem putnam_1972_b3
(G : Type*) [Group G]
(A B : G)
(hab : A * B * A = B * A^2 * B ∧ A^3 = 1 ∧ (∃ n : ℤ, n > 0 ∧ B^(2*n - 1) = 1))
: B = 1 :=
sorry
