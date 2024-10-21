import Mathlib

open Filter Topology

abbrev putnam_1997_a5_solution : Prop := sorry
-- True
/--
Let $N_n$ denote the number of ordered $n$-tuples of positive integers $(a_1,a_2,\ldots,a_n)$ such that $1/a_1 + 1/a_2 +\ldots + 1/a_n=1$.  Determine whether $N_{10}$ is even or odd.
-/
theorem putnam_1997_a5
(N : (n : ℕ+) → Set (Fin n → ℕ+))
(hN : N = fun (n : ℕ+) => {t : Fin n → ℕ+ | (∀ i j : Fin n, i < j → t i <= t j) ∧ (∑ i : Fin n, (1 : ℝ)/(t i) = 1) })
: Odd (N 10).ncard ↔ putnam_1997_a5_solution :=
sorry
