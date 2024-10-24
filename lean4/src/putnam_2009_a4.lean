import Mathlib

open Topology MvPolynomial Filter Set

abbrev putnam_2009_a4_solution : Prop := sorry
-- False
/--
Let $S$ be a set of rational numbers such that
\begin{enumerate}
\item[(a)] $0 \in S$;
\item[(b)] If $x \in S$ then $x+1\in S$ and $x-1\in S$; and
\item[(c)] If $x\in S$ and $x\not\in\{0,1\}$, then $\frac{1}{x(x-1)}\in S$.
\end{enumerate}
Must $S$ contain all rational numbers?
-/
theorem putnam_2009_a4
: ((∀ S : Set ℚ, 0 ∈ S → (∀ x ∈ S, x + 1 ∈ S ∧ x - 1 ∈ S) → (∀ x ∈ S, x ∉ ({0, 1} : Set ℚ) → 1 / (x * (x - 1)) ∈ S) → ∀ r : ℚ, r ∈ S) ↔ putnam_2009_a4_solution) :=
sorry
