import Mathlib

open Set

abbrev putnam_1985_a1_solution : ℕ × ℕ × ℕ × ℕ := sorry
-- (10, 10, 0, 0)
/--
Determine, with proof, the number of ordered triples $(A_1, A_2, A_3)$ of sets which have the property that
\begin{enumerate}
\item[(i)] $A_1 \cup A_2 \cup A_3 = \{1,2,3,4,5,6,7,8,9,10\}$, and
\item[(ii)] $A_1 \cap A_2 \cap A_3 = \emptyset$.
\end{enumerate}
Express your answer in the form $2^a 3^b 5^c 7^d$, where $a,b,c,d$ are nonnegative integers.
-/
theorem putnam_1985_a1 :
  let (a, b, c, d) := putnam_1985_a1_solution;
  {(A1, A2, A3) : Set ℤ × Set ℤ × Set ℤ | A1 ∪ A2 ∪ A3 = Icc 1 10 ∧ A1 ∩ A2 ∩ A3 = ∅}.ncard = 2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d :=
sorry
