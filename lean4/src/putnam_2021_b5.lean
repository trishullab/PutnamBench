import Mathlib

open Filter Topology

/--
Say that an $n$-by-$n$ matrix $A=(a_{ij})_{1 \leq i,j \leq n}$ with integer entries is \emph{very odd} if, for every nonempty subset $S$ of $\{1,2,\dots,n\}$, the $|S|$-by-$|S|$ submatrix $(a_{ij})_{i,j \in S}$ has odd determinant. Prove that if $A$ is very odd, then $A^k$ is very odd for every $k \geq 1$.
-/
theorem putnam_2021_b5
(n : ℕ)
(npos : n ≥ 1)
(veryodd : Matrix (Fin n) (Fin n) ℤ → Prop)
(hveryodd : ∀ A, veryodd A ↔ ∀ m ∈ Set.Icc 1 n, ∀ reind : Fin m → Fin n, Function.Injective reind → Odd (A.submatrix reind reind).det)
: ∀ A, veryodd A → (∀ k ≥ 1, veryodd (A ^ k)) :=
sorry
