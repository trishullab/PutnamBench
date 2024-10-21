import Mathlib

open Topology Filter

/--
Let $a_j,b_j,c_j$ be integers for $1\leq j\leq N$. Assume for each $j$, at least one of $a_j,b_j,c_j$ is odd. Show that there exist integers $r$, $s$, $t$ such that $ra_j+sb_j+tc_j$ is odd for at least $4N/7$ values of $j$, $1\leq j\leq N$.
-/
theorem putnam_2000_b1
(N : ℕ)
(a b c : Fin N → ℤ)
(Nge1 : N ≥ 1)
(hodd : ∀ j : Fin N, Odd (a j) ∨ Odd (b j) ∨ Odd (c j))
: (∃ r s t : ℤ, {j : Fin N | Odd (r * a j + s * b j + t * c j)}.ncard ≥ (4 * N : ℝ) / 7) :=
sorry
