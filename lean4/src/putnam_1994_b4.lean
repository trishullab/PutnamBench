import Mathlib

open Filter Topology

/--
For $n \geq 1$, let $d_n$ be the greatest common divisor of the entries of $A^n-I$, where $A=\begin{pmatrix} 3 & 2 \\ 4 & 3 \end{pmatrix}$ and $I=\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. Show that $\lim_{n \to \infty} d_n=\infty$.
-/
theorem putnam_1994_b4
(matgcd : Matrix (Fin 2) (Fin 2) ℤ → ℤ)
(A : Matrix (Fin 2) (Fin 2) ℤ)
(d : ℕ → ℤ)
(hmatgcd : ∀ M, matgcd M = Int.gcd (Int.gcd (Int.gcd (M 0 0) (M 0 1)) (M 1 0)) (M 1 1))
(hA : A 0 0 = 3 ∧ A 0 1 = 2 ∧ A 1 0 = 4 ∧ A 1 1 = 3)
(hd : ∀ n ≥ 1, d n = matgcd (A ^ n - 1))
: Tendsto d atTop atTop :=
sorry
