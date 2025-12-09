import Mathlib

open BigOperators Finset Matrix

/--
For $n \geq 2$, let $A = [a_{i,j}]_{i,j=1}^n$ be an $n$-by-$n$ matrix of nonnegative integers such that:
(a) $a_{i,j} = 0$ when $i + j \leq n$;
(b) $a_{i+1,j} \in \{a_{i,j}, a_{i,j} + 1\}$ when $1 \leq i \leq n-1$ and $1 \leq j \leq n$; and
(c) $a_{i,j+1} \in \{a_{i,j}, a_{i,j} + 1\}$ when $1 \leq i \leq n$ and $1 \leq j \leq n-1$.

Let $S$ be the sum of the entries of $A$, and let $N$ be the number of nonzero entries of $A$.
Prove that $S \leq \frac{(n+2)N}{3}$.

Note: We parameterize by $m$ where $n = m + 2$, so $m \geq 0$ and the matrix is $(m+2) \times (m+2)$.
With 0-indexing (indices $0, \ldots, m+1$), the conditions become:
(a) $a_{i,j} = 0$ when $i + j \leq m$ (since original $i + j \leq n$ with 1-indexing becomes $(i'+1) + (j'+1) \leq m+2$)
(b) $a_{i+1,j} \in \{a_{i,j}, a_{i,j}+1\}$ when $i \leq m$
(c) $a_{i,j+1} \in \{a_{i,j}, a_{i,j}+1\}$ when $j \leq m$
-/
theorem putnam_2025_b4
    (m : ℕ)
    (A : Matrix (Fin (m + 2)) (Fin (m + 2)) ℕ)
    (ha : ∀ (i j : Fin (m + 2)), (i : ℕ) + (j : ℕ) ≤ m → A i j = 0)
    (hb : ∀ (i : Fin (m + 1)) (j : Fin (m + 2)),
      A (Fin.succ i) j = A (Fin.castSucc i) j ∨
      A (Fin.succ i) j = A (Fin.castSucc i) j + 1)
    (hc : ∀ (i : Fin (m + 2)) (j : Fin (m + 1)),
      A i (Fin.succ j) = A i (Fin.castSucc j) ∨
      A i (Fin.succ j) = A i (Fin.castSucc j) + 1)
    (S : ℕ)
    (hS : S = ∑ i : Fin (m + 2), ∑ j : Fin (m + 2), A i j)
    (N : ℕ)
    (hN : N = #{p : Fin (m + 2) × Fin (m + 2) | A p.1 p.2 ≠ 0}) :
    3 * S ≤ (m + 4) * N := by
  sorry
