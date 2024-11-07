import Mathlib

open  Real Equiv

abbrev putnam_1986_a4_solution : ℚ × ℚ × ℚ × ℚ × ℚ × ℚ × ℚ := sorry
-- (1, 4, 2, 3, -4, 2, 1)
/--
A \emph{transversal} of an $n\times n$ matrix $A$ consists of $n$ entries of $A$, no two in the same row or column. Let $f(n)$ be the number of $n \times n$ matrices $A$ satisfying the following two conditions:
\begin{enumerate}
\item[(a)] Each entry $\alpha_{i,j}$ of $A$ is in the set
$\{-1,0,1\}$.
\item[(b)] The sum of the $n$ entries of a transversal is the same for all transversals of $A$.
\end{enumerate}
An example of such a matrix $A$ is
\[
A = \left( \begin{array}{ccc} -1 & 0 & -1 \\ 0 & 1 & 0 \\ 0 & 1 & 0
\end{array}
\right).
\]
Determine with proof a formula for $f(n)$ of the form
\[
f(n) = a_1 b_1^n + a_2 b_2^n + a_3 b_3^n + a_4,
\]
where the $a_i$'s and $b_i$'s are rational numbers.
-/
theorem putnam_1986_a4
  (f : ℕ → ℕ)
  (hf : f = fun n ↦
    Set.ncard {A : Matrix (Fin n) (Fin n) ℤ |
    (∀ i j : Fin n, A i j ∈ ({-1, 0, 1} : Set ℤ)) ∧
    ∃ S : ℤ, ∀ ϕ : Perm (Fin n), ∑ i : Fin n, A i (ϕ i) = S}) :
  let (a1, b1, a2, b2, a3, b3, a4) := putnam_1986_a4_solution;
  (∀ n > 0, f n = a1 * b1 ^ n + a2 * b2 ^ n + a3 * b3 ^ n + a4) :=
sorry
