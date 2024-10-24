import Mathlib

open Filter Topology Set

/--
For $j \in \{1, 2, 3, 4\}$, let $z_j$ be a complex number with $|z_j| = 1$ and $z_j \neq 1$. Prove that \[ 3 - z_1 - z_2 - z_3 - z_4 + z_1 z_2 z_3 z_4 \neq 0. \]
-/
theorem putnam_2020_b5
(z : Fin 4 → ℂ)
(hzle1 : ∀ n, ‖z n‖ = 1)
(hzne1 : ∀ n, z n ≠ 1)
: 3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0:=
sorry
