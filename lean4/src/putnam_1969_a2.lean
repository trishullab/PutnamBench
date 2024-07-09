import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_a2
(D : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ := fun n => λ i j => |i.1 - j.1| )
: ∀ n, n ≥ 2 → (D n).det = (-1)^((n : ℤ)-1) * ((n : ℤ)-1) * 2^((n : ℤ)-2) :=
sorry
