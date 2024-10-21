import Mathlib

open Matrix Filter Topology Set Nat

/--
Let $A$ be a $3 \times 2$ matrix and $B$ be a $2 \times 3$ matrix such that $$AB =
\begin{pmatrix}
8 & 2 & -2 \\
2 & 5 & 4 \\
-2 & 4 & 5
\end{pmatrix}.
$$ Prove that $$BA =
\begin{pmatrix}
9 & 0 \\
0 & 9
\end{pmatrix}.$$
-/
theorem putnam_1969_b6
(A : Matrix (Fin 3) (Fin 2) ℝ)
(B : Matrix (Fin 2) (Fin 3) ℝ)
(p : Fin 3 → Fin 3 → ℝ)
(hp : p 0 0 = 8 ∧ p 0 1 = 2 ∧ p 0 2 = -2 ∧
p 1 0 = 2 ∧ p 1 1 = 5 ∧ p 1 2 = 4 ∧
p 2 0 = -2 ∧ p 2 1 = 4 ∧ p 2 2 = 5)
(hAB : A * B = Matrix.of p)
: B * A = 9 * (1 : Matrix (Fin 2) (Fin 2) ℝ) :=
sorry
