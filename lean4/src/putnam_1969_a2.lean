import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

theorem putnam_1969_a2
(D : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ)
(hD : D = fun (n : ℕ) => λ (i : Fin n) (j : Fin n) => |(i : ℝ) - (j : ℝ)| )
: ∀ n, n ≥ 2 → (D n).det = (-1)^((n : ℤ)-1) * ((n : ℤ)-1) * 2^((n : ℤ)-2) :=
sorry
