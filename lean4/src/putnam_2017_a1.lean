import Mathlib
open BigOperators

abbrev putnam_2017_a1_solution : Set ℤ := sorry
-- {x : ℤ | x > 0 ∧ (x = 1 ∨ 5 ∣ x)}
theorem putnam_2017_a1
(Q : Set (Set ℤ))
(Spos : ∀ S ∈ Q, ∀ x ∈ S, x > 0)
(S2 : ∀ S ∈ Q, 2 ∈ S)
(Sn : ∀ S ∈ Q, ∀ n, n ^ 2 ∈ S → n ∈ S)
(Sn5 : ∀ S ∈ Q, ∀ n, n ∈ S → (n + 5) ^ 2 ∈ S)
: Set.univ \ (⋂ T ∈ Q, T) = putnam_2017_a1_solution :=
sorry
