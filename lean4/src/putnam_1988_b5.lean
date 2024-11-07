import Mathlib

open Set Filter Topology

abbrev putnam_1988_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => 2 * n)
/--
For positive integers $n$, let $M_n$ be the $2n+1$ by $2n+1$ skew-symmetric matrix for which each entry in the first $n$ subdiagonals below the main diagonal is $1$ and each of the remaining entries below the main diagonal is $-1$. Find, with proof, the rank of $M_n$. (According to one definition, the rank of a matrix is the largest $k$ such that there is a $k \times k$ submatrix with nonzero determinant.) One may note that
\begin{align*}
M_1&=\begin{pmatrix} 0 & -1 & 1 \\ 1 & 0 & -1 \\ -1 & 1 & 0 \end{pmatrix} \\
M_2&=\begin{pmatrix} 0 & -1 & -1 & 1 & 1 \\ 1 & 0 & -1 & -1 & 1 \\ 1 & 1 & 0 & -1 & -1 \\ -1 & 1 & 1 & 0 & -1 \\ -1 & -1 & 1 & 1 & 0 \end{pmatrix}.
\end{align*}
-/
theorem putnam_1988_b5
    (n : ℕ) (hn : n > 0)
    (Mn : Matrix (Fin (2 * n + 1)) (Fin (2 * n + 1)) ℝ)
    (Mnskewsymm : ∀ i j, Mn i j = -(Mn j i))
    (hMn1 : ∀ i j, (1 ≤ (i.1 : ℤ) - j.1 ∧ (i.1 : ℤ) - j.1 ≤ n) → Mn i j = 1)
    (hMnn1 : ∀ i j, (i.1 : ℤ) - j.1 > n → Mn i j = -1) :
    Mn.rank = putnam_1988_b5_solution n :=
  sorry
