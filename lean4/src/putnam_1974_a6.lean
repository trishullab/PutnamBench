import Mathlib
open BigOperators

open Set Nat Polynomial

abbrev putnam_1974_a6_solution : ℕ := sorry
-- 25
theorem putnam_1974_a6
(n : ℤ := 10^6)
(hdivnallx : Polynomial ℤ → Prop := fun f => Monic f ∧ (∀ x : ℤ, (n : ℤ) ∣ f.eval x))
: sInf {d : ℕ | ∃ f : Polynomial ℤ, hdivnallx f ∧ d = f.natDegree} = putnam_1974_a6_solution :=
sorry
