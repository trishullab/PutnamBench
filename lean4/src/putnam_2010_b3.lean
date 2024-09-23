import Mathlib
open BigOperators

open Filter Topology Set

abbrev putnam_2010_b3_solution : Set ℕ := sorry
-- Ici 1005
/--
There are $2010$ boxes labeled $B_1, B_2, \dots, B_{2010}$, and $2010n$ balls have been distributed among them, for some positive integer $n$. You may redistribute the balls by a sequence of moves, each of which consists of choosing an $i$ and moving \emph{exactly} $i$ balls from box $B_i$ into any one other box. For which values of $n$ is it possible to reach the distribution with exactly $n$ balls in each box, regardless of the initial distribution of balls?
-/
theorem putnam_2010_b3
(n : ℕ)
(npos : n > 0)
(trans : (ℕ → Fin 2010 → ℕ) → ℕ → Prop)
(htrans : trans = fun P T ↦ ∀ t : ℕ, t < T →
      ∃ i j : Fin 2010, i ≠ j ∧ P t i ≥ i.1 + 1 ∧ P (t + 1) i = P t i - (i.1 + 1) ∧ P (t + 1) j = P t j + (i.1 + 1) ∧ ∀ k : Fin 2010, k ≠ i → k ≠ j → P (t + 1) k = P t k)
: ((∀ B : Fin 2010 → ℕ, ∑ i : Fin 2010, B i = 2010 * n → ∃ (P : ℕ → Fin 2010 → ℕ) (T : ℕ), P 0 = B ∧ trans P T ∧ ∀ i : Fin 2010, P T i = n) ↔ n ∈ putnam_2010_b3_solution) :=
sorry
