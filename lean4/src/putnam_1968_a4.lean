import Mathlib

open Finset

/--
Prove that the sum of the squares of the distances between any $n$ points on the unit sphere $\{(x, y, z) \mid x^2 + y^2 + z^2 = 1\}$ is at most $n^2$.
-/
theorem putnam_1968_a4
(n : ℕ)
(S : Fin n → (EuclideanSpace ℝ (Fin 3)))
(hS : ∀ i : Fin n, dist 0 (S i) = 1)
: ∑ i : Fin n, ∑ j : Fin n, (if i < j then (dist (S i) (S j))^2 else (0 : ℝ)) ≤ n^2 :=
sorry
