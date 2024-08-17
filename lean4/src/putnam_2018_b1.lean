import Mathlib
open BigOperators

abbrev putnam_2018_b1_solution : Set (Mathlib.Vector ℤ 2) := sorry
-- {v : Mathlib.Vector ℤ 2 | ∃ b : ℤ, 0 ≤ b ∧ b ≤ 100 ∧ Even b ∧ v.toList = [1, b]}
theorem putnam_2018_b1
(P : Finset (Mathlib.Vector ℤ 2))
(v : Mathlib.Vector ℤ 2)
(vinP : Prop)
(Pvdiff : Finset (Mathlib.Vector ℤ 2))
(Pvpart : Prop)
(hP : P = {v' : Mathlib.Vector ℤ 2 | 0 ≤ v'[0] ∧ v'[0] ≤ 2 ∧ 0 ≤ v'[1] ∧ v'[1] ≤ 100})
(hvinP : vinP = (v ∈ P))
(hPvdiff : Pvdiff = P \ ({v} : Finset (Mathlib.Vector ℤ 2)))
(hPvpart : Pvpart = (∃ Q R : Finset (Mathlib.Vector ℤ 2), (Q ∪ R = Pvdiff) ∧ (Q ∩ R = ∅) ∧ (Q.card = R.card) ∧ (∑ q in Q, q[0] = ∑ r in R, r[0]) ∧ (∑ q in Q, q[1] = ∑ r in R, r[1])))
: (vinP ∧ Pvpart) ↔ v ∈ putnam_2018_b1_solution :=
sorry
