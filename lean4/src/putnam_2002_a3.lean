import Mathlib

open Nat

/--
Let $n \geq 2$ be an integer and $T_n$ be the number of non-empty subsets $S$ of $\{1, 2, 3, \dots, n\}$ with the property that the average of the elements of $S$ is an integer. Prove that $T_n - n$ is always even.
-/
theorem putnam_2002_a3
(n Tn : ℤ)
(hn : n ≥ 2)
(hTn : Tn = Set.ncard {S : Set ℤ | S ⊆ Set.Icc 1 n ∧ Nonempty S ∧ ∃ k : ℤ, k = ((1 : ℝ) / S.ncard) * (∑' s : S, s.1)})
: Even (Tn - n) :=
sorry
