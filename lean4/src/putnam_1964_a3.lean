import Mathlib
open BigOperators

open Set Function

theorem putnam_1964_a3
(x a b : ℕ → ℝ)
(hxdense : range x ⊆ Ioo 0 1 ∧ closure (range x) ⊇ Ioo 0 1)
(hxinj : Injective x)
(ha : a = fun n ↦ x n - sSup ({0} ∪ {p : ℝ | p < x n ∧ ∃ i < n, p = x i}))
(hb : b = fun n ↦ sInf ({1} ∪ {p : ℝ | p > x n ∧ ∃ i < n, p = x i}) - x n)
: (∑' n : ℕ, a n * b n * (a n + b n) = 1 / 3) :=
sorry
