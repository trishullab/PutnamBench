import Mathlib
open BigOperators

open Nat Set MeasureTheory Topology Filter

theorem putnam_1973_b1
(n : ℕ)
(a : Finset.Icc 1 (2 * n + 1) → ℤ)
(h_remove : ∀ S : Finset (Finset.Icc 1 (2 * n + 1)), S.card = 2*n → ∃ T, T ⊆ S ∧ T.card = n ∧ ∑ i in T, a i = ∑ i in (S \ T), a i)
: ∀ i j : Finset.Icc 1 (2 * n + 1), a i = a j :=
sorry
