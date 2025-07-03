import Mathlib

open Nat Set MeasureTheory Topology Filter

/--
Let $a_1, \dots, a_{2n + 1}$ be a set of integers such that, if any one of them is removed, the remaining ones can be divided into two sets of $n$ integers with equal sums. Prove $a_1 = a_2 = \dots = a_{2n+1}$.
-/
theorem putnam_1973_b1
(n : ℕ)
(a : Finset.Icc 1 (2 * n + 1) → ℤ)
(h_remove : ∀ S : Finset (Finset.Icc 1 (2 * n + 1)), S.card = 2*n → ∃ T, T ⊆ S ∧ T.card = n ∧ ∑ i ∈ T, a i = ∑ i ∈ (S \ T), a i)
: ∀ i j : Finset.Icc 1 (2 * n + 1), a i = a j :=
sorry
