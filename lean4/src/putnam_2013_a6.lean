import Mathlib

open Function Set

/--
Define a function $w:\mathbb{Z} \times \mathbb{Z} \to \mathbb{Z}$ as follows. For $|a|,|b| \leq 2$, let $w(a,b)$ be as in the table shown; otherwise, let $w(a,b)=0$.
\begin{center}
\begin{tabular}{|cc|r|r|r|r|r|}
\hline
\multicolumn{2}{|c|}{\multirow{2}{*}{$w(a,b)$}} & \multicolumn{5}{|c|}{$b$} \\
& & -2 & -1 & 0 & 1 & 2 \\
\hline
& -2 & -1 & -2 & 2 & -2 & -1 \\
& -1 & -2 & 4 & -4 & 4 & -2 \\
$a$ & 0 & 2 & -4 & 12 & -4 & 2 \\
& 1 & -2 & 4 & -4 & 4 & -2 \\
& 2 & -1 & -2 & 2 & -2 & -1 \\
\hline
\end{tabular}
\end{center}
For every finite subset $S$ of $\mathbb{Z} \times \mathbb{Z}$, define $A(S)=\sum_{(\mathbf{s},\mathbf{s}') \in S \times S} w(\mathbf{s}-\mathbf{s}')$. Prove that if $S$ is any finite nonempty subset of $\mathbb{Z} \times \mathbb{Z}$, then $A(S)>0$. (For example, if $S=\{(0,1),(0,2),(2,0),(3,1)\}$, then the terms in $A(S)$ are $12,12,12,12,4,4,0,0,0,0,-1,-1,-2,-2,-4,-4$.)
-/
theorem putnam_2013_a6
  (w : ℤ → ℤ → ℤ)
  (A : Finset (ℤ × ℤ) → ℤ)
  (hwn1 : w (-2) (-2) = -1 ∧ w 2 (-2) = -1 ∧ w (-2) 2 = -1 ∧ w 2 2 = -1)
  (hwn2 : w (-1) (-2) = -2 ∧ w 1 (-2) = -2 ∧ w (-2) (-1) = -2 ∧ w 2 (-1) = -2 ∧ w (-2) 1 = -2 ∧ w 2 1 = -2 ∧ w (-1) 2 = -2 ∧ w 1 2 = -2)
  (hw2 : w 0 (-2) = 2 ∧ w (-2) 0 = 2 ∧ w 2 0 = 2 ∧ w 0 2 = 2)
  (hw4 : w (-1) (-1) = 4 ∧ w 1 (-1) = 4 ∧ w (-1) 1 = 4 ∧ w 1 1 = 4)
  (hwn4 : w 0 (-1) = -4 ∧ w (-1) 0 = -4 ∧ w 1 0 = -4 ∧ w 0 1 = -4)
  (hw12 : w 0 0 = 12)
  (hw0 : ∀ a b : ℤ, (|a| > 2 ∨ |b| > 2) → w a b = 0)
  (hA : ∀ S, A S = ∑ s ∈ S, ∑ s' ∈ S, w (s - s').1 (s - s').2) :
  ∀ S : Finset (ℤ × ℤ), Nonempty S → A S > 0 :=
sorry
