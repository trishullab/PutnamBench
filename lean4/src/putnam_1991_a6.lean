import Mathlib

open Filter Topology

-- Note: uses (ℕ → ℕ) instead of (Fin r → ℕ) and (Fin s → ℕ)
/--
Let $A(n)$ denote the number of sums of positive integers $a_1+a_2+\cdots+a_r$ which add up to $n$ with $a_1>a_2+a_3,a_2>a_3+a_4,\dots,a_{r-2}>a_{r-1}+a_r,a_{r-1}>a_r$. Let $B(n)$ denote the number of $b_1+b_2+\cdots+b_s$ which add up to $n$, with
\begin{enumerate}
\item $b_1 \geq b_2 \geq \dots \geq b_s$,
\item each $b_i$ is in the sequence $1,2,4,\dots,g_j,\dots$ defined by $g_1=1$, $g_2=2$, and $g_j=g_{j-1}+g_{j-2}+1$, and
\item if $b_1=g_k$ then every element in $\{1,2,4,\dots,g_k\}$ appears at least once as a $b_i$.
\end{enumerate}
Prove that $A(n)=B(n)$ for each $n \geq 1$. (For example, $A(7)=5$ because the relevant sums are $7,6+1,5+2,4+3,4+2+1$, and $B(7)=5$ because the relevant sums are $4+2+1,2+2+2+1,2+2+1+1+1,2+1+1+1+1+1,1+1+1+1+1+1+1$.)
-/
theorem putnam_1991_a6
  (nabsum : ℕ → ℕ × (ℕ → ℕ) → Prop)
  (agt bge bg1 bg2 : ℕ × (ℕ → ℕ) → Prop)
  (A g B: ℕ → ℕ)
  (hnabsum : ∀ᵉ (n ≥ 1) (ab), nabsum n ab ↔
    (ab.1 ≥ 1 ∧ (∀ i < ab.1, ab.2 i > 0) ∧
    (∀ i ≥ ab.1, ab.2 i = 0) ∧ (∑ i : Fin ab.1, ab.2 i) = n))
  (hA : ∀ n ≥ 1, A n = {a | nabsum n a ∧
    (∀ i : Fin (a.1 - 2), a.2 i > a.2 (i + 1) + a.2 (i + 2)) ∧ 1 < a.1 → a.2 (a.1 - 2) > a.2 (a.1 - 1)}.encard)
  (hg : g 0 = 1 ∧ g 1 = 2 ∧ (∀ j ≥ 2, g j = g (j - 1) + g (j - 2) + 1))
  (hB : ∀ n ≥ 1, B n = {b | nabsum n b ∧
    (∀ i : Fin (b.1 - 1), b.2 i ≥ b.2 (i + 1)) ∧
    (∀ i : Fin b.1, ∃ j : ℕ, b.2 i = g j) ∧
    (∃ k : ℕ, b.2 0 = g k ∧ (∀ j ≤ k, ∃ i : Fin b.1, b.2 i = g j))}.encard) :
  ∀ n ≥ 1, (A n) = (B n) :=
sorry
