import Mathlib
open BigOperators

open Polynomial

abbrev putnam_2022_b2_solution : Set ℕ := sorry
-- {1, 7}
/--
Let $\times$ represent the cross product in $\mathbb{R}^3$. For what positive integers $n$ does there exist a set $S \subset \mathbb{R}^3$ with exactly $n$ elements such that $S=\{v \times w:v,w \in S\}$?
-/
theorem putnam_2022_b2
(n : ℕ)
(Scross : Finset (Fin 3 → ℝ) → Prop)
(hScross : ∀ S : Finset (Fin 3 → ℝ), Scross S = (S = {u : Fin 3 → ℝ | ∃ v w : S, u = crossProduct v w}))
: (n > 0 ∧ ∃ S : Finset (Fin 3 → ℝ), S.card = n ∧ Scross S) ↔ n ∈ putnam_2022_b2_solution :=
sorry
