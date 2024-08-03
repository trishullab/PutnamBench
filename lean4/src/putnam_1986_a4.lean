import Mathlib
open BigOperators

open  Real Equiv

abbrev putnam_1986_a4_solution : ℚ × ℚ × ℚ × ℚ × ℚ × ℚ × ℚ := sorry
-- (1, 4, 2, 3, -4, 2, 1)
theorem putnam_1986_a4
(f : ℕ → ℕ)
(hf : f = fun n ↦ {A : Matrix (Fin n) (Fin n) ℤ | (∀ i j : Fin n, A i j ∈ ({-1, 0, 1} : Set ℤ)) ∧ ∃ S : ℤ, ∀ ϕ : Perm (Fin n), ∑ i : Fin n, A i (ϕ i) = S}.ncard)
: let (a1, b1, a2, b2, a3, b3, a4) := putnam_1986_a4_solution;
(∀ n > 0, f n = a1 * b1 ^ n + a2 * b2 ^ n + a3 * b3 ^ n + a4) :=
sorry
