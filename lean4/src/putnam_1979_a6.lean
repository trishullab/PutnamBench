import Mathlib

open Set

/--
For all $i \in \{0, 1, \dots, n - 1\}$, let $p_i \in [0, 1]$. Prove that there exists some $x \in [0, 1]$ such that $$\sum_{i = 0}^{n - 1} \frac{1}{|x - p_i|} \le 8n\left(\sum_{i = 0}^{n-1} \frac{1}{2i + 1}\right).$$
-/
theorem putnam_1979_a6
(n : ℕ)
(p : ℕ → ℝ)
(hp : ∀ i ∈ Finset.range n, p i ∈ Icc 0 1)
: ∃ x ∈ Icc 0 1, (∀ i ∈ Finset.range n, x ≠ p i) ∧ ∑ i ∈ Finset.range n, 1/|x - p i| ≤ 8*n*∑ i ∈ Finset.range n, (1 : ℝ)/(2*i + 1) :=
sorry
