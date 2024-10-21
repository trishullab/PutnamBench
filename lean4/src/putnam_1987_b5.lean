import Mathlib

open MvPolynomial Real Nat Filter Topology

/--
Let $O_n$ be the $n$-dimensional vector $(0,0,\cdots, 0)$. Let $M$ be a $2n \times n$ matrix of complex numbers such that whenever $(z_1, z_2, \dots, z_{2n})M = O_n$, with complex $z_i$, not all zero, then at least one of the $z_i$ is not real. Prove that for arbitrary real numbers $r_1, r_2, \dots, r_{2n}$, there are complex numbers $w_1, w_2, \dots, w_n$ such that
\[
\mathrm{re}\left[ M \left( \begin{array}{c} w_1 \\ \vdots \\ w_n \end{array} \right) \right] = \left( \begin{array}{c} r_1 \\ \vdots \\ r_{2n} \end{array} \right).
\]
(Note: if $C$ is a matrix of complex numbers, $\mathrm{re}(C)$ is the matrix whose entries are the real parts of the entries of $C$.)
-/
theorem putnam_1987_b5
(n : ℕ)
(npos : n > 0)
(M : Matrix (Fin (2 * n)) (Fin n) ℂ)
(hM : ∀ z : Matrix (Fin 1) (Fin (2 * n)) ℂ, z * M = 0 → (¬∀ i : Fin (2 * n), z 0 i = 0) → ∃ i : Fin (2 * n), (z 0 i).im ≠ 0)
: (∀ r : Matrix (Fin (2 * n)) (Fin 1) ℝ, ∃ w : Matrix (Fin n) (Fin 1) ℂ, ∀ i : (Fin (2 * n)), ((M * w) i 0).re = r i 0) :=
sorry
