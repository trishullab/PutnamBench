import Mathlib

open Filter Topology Real

/--
Suppose we have a necklace of $n$ beads. Each bead is labeled with an integer and the sum of all these labels is $n-1$. Prove that we can cut the necklace to form a string whose consecutive labels $x_{1},x\_{2},\dots,x_{n}$ satisfy \[\sum_{i=1}^{k} x_{i} \leq k-1 \qquad \mbox{for} \quad k=1,2,\dots,n.\]
-/
theorem putnam_1995_a4
(n : ℕ)
(hn : n > 0)
(necklace : Fin n → ℤ)
(hnecklacesum : ∑ i : Fin n, necklace i = n - 1)
: ∃ cut, ∀ k, ∑ i : {j : Fin n | j.1 ≤ k}, necklace (cut + i) ≤ k :=
sorry
