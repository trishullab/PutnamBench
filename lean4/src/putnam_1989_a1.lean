import Mathlib
open BigOperators

abbrev putnam_1989_a1_solution : ℕ := sorry
-- 1
theorem putnam_1989_a1
(pdigalt : List ℕ → Prop)
(hpdigalt : ∀ pdig : List ℕ, pdigalt pdig = Odd pdig.length ∧ (∀ i : Fin pdig.length, pdig.get i = if Even (i : ℕ) then 1 else 0))
: {p : ℕ | p > 0 ∧ p.Prime ∧ pdigalt (Nat.digits 10 p)}.encard = putnam_1989_a1_solution :=
sorry
