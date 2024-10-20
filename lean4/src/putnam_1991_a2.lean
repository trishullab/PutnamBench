import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1991_a2_solution : Prop := sorry
-- False
/--
Let $\mathbf{A}$ and $\mathbf{B}$ be different $n \times n$ matrices with real entries. If $\mathbf{A}^3=\mathbf{B}^3$ and $\mathbf{A}^2\mathbf{B}=\mathbf{B}^2\mathbf{A}$, can $\mathbf{A}^2+\mathbf{B}^2$ be invertible?
-/
theorem putnam_1991_a2
(n : ℕ)
(npos : n ≥ 1)
: (∃ A B : Matrix (Fin n) (Fin n) ℝ, A ≠ B ∧ A ^ 3 = B ^ 3 ∧ A ^ 2 * B = B ^ 2 * A ∧ Nonempty (Invertible (A ^ 2 + B ^ 2))) ↔ putnam_1991_a2_solution :=
sorry
