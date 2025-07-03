import Mathlib

/--
Prove that, for every set $X = \{x_1, x_2, \dots, x_n\}$ of $n$ real numbers, there exists a non-empty subset $S$ of $X$ and an integer $m$ such that
\[
\left| m + \sum_{s \in S} s \right| \leq \frac{1}{n+1}.
\]
-/
theorem putnam_2006_b2
(n : ℕ)
(npos : n > 0)
(X : Finset ℝ)
(hXcard : X.card = n)
: (∃ S ⊆ X, S ≠ ∅ ∧ ∃ m : ℤ, |m + ∑ s ∈ S, s| ≤ 1 / (n + 1)) :=
sorry
