import Mathlib

open Set Function Filter Topology Polynomial Real

abbrev putnam_1982_b4_solution : Prop × Prop := sorry
-- (True, True)
/--
Let $n_1, n_2, \dots, n_s$ be distinct integers such that, for every integer $k$, $n_1n_2\cdots n_s$ divides $(n_1 + k)(n_2 + k) \cdots (n_s + k)$. Prove or provide a counterexample to the following claims:
\begin{enumerate}
\item
For some $i$, $|n_i| = 1$.
\item
If all $n_i$ are positive, then $\{n_1, n_2, \dots, n_s\} = \{1, 2, \dots, s\}$.
\end{enumerate}
-/
theorem putnam_1982_b4
    (P : Finset ℤ → Prop)
    (P_def : ∀ n, P n ↔ n.Nonempty ∧ ∀ k, ∏ i ∈ n, i ∣ ∏ i ∈ n, (i + k)) :
    ((∀ n, P n → 1 ∈ n ∨ -1 ∈ n) ↔ putnam_1982_b4_solution.1) ∧
    ((∀ n, P n → (∀ i ∈ n, 0 < i) → n = Finset.Icc (1 : ℤ) n.card) ↔ putnam_1982_b4_solution.2) :=
  sorry
