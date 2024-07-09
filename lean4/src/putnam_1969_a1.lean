import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

abbrev putnam_1969_a1_solution : Set (Set ℝ) := sorry
-- {{x} | x : ℝ} ∪ {Set.Ici x | x : ℝ} ∪ {Set.Iic x | x : ℝ} ∪ {Set.Iio x | x : ℝ} ∪ {Set.Ioi x | x : ℝ} ∪ {Set.univ}
theorem putnam_1969_a1
: {{z : ℝ | ∃ x : Fin 2 → ℝ, MvPolynomial.eval x f = z} | f : MvPolynomial (Fin 2) ℝ} = putnam_1969_a1_solution :=
sorry
