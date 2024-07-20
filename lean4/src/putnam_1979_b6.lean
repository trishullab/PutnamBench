import Mathlib
open BigOperators

open Set Topology Filter Polynomial MeasureTheory

theorem putnam_1979_b6
(n : ℕ)
(z : Fin n → ℂ)
: (|((∑ i : Fin n, (z i) ^ 2) ^ ((1 : ℂ) / 2)).re| ≤ ∑ i : Fin n, |(z i).re|) :=
sorry
