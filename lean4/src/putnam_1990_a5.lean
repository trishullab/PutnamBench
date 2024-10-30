import Mathlib

open Filter Topology Nat

abbrev putnam_1990_a5_solution : Prop := sorry
-- False
/--
If $\mathbf{A}$ and $\mathbf{B}$ are square matrices of the same size such that $\mathbf{ABAB}=\mathbf{0}$, does it follow that $\mathbf{BABA}=\mathbf{0}$?
-/
theorem putnam_1990_a5 :
  putnam_1990_a5_solution ↔
  (∀ n ≥ 1, ∀ A B : Matrix (Fin n) (Fin n) ℝ,
    A * B * A * B = 0 → B * A * B * A = 0) :=
sorry
