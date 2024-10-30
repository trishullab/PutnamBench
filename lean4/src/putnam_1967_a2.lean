import Mathlib

open Nat Topology Filter

/--
Define $S_0$ to be $1$. For $n \geq 1$, let $S_n$ be the number of $n \times n$ matrices whose elements are nonnegative integers with the property that $a_{ij}=a_{ji}$, ($i,j=1,2,\dots,n$) and where $\sum_{i=1}^n a_{ij}=1$, ($j=1,2,\dots,n$). Prove
\begin{enumerate}
\item[(a)] $S_{n+1}=S_n+nS_{n-1}$
\item[(b)] $\sum_{n=0}^\infty S_n\frac{x^n}{n!} = \exp(x+x^2/2)$, where $\exp(x)=e^x$.
\end{enumerate}
-/
theorem putnam_1967_a2
    (S : ℕ → ℤ)
    (hS0 : S 0 = 1)
    (hSn : ∀ n ≥ 1, S n = {A : Matrix (Fin n) (Fin n) ℕ | (∀ i j, A i j = A j i) ∧ (∀ j, (∑ i, A i j) = 1)}.ncard) :
    (∀ n ≥ 1, S (n + 1) = S n + n * S (n - 1)) ∧
    (∀ x : ℝ, (∑' n : ℕ, S n * (x ^ n / (n)!)) = Real.exp (x + x ^ 2 / 2)) :=
  sorry
