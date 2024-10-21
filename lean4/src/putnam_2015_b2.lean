import Mathlib

abbrev putnam_2015_b2_solution : Prop := sorry
-- True
/--
Given a list of the positive integers $1,2,3,4,\dots$, take the first three numbers $1,2,3$ and their sum $6$ and cross all four numbers off the list. Repeat with the three smallest remaining numbers $4,5,7$ and their sum $16$. Continue in this way, crossing off the three smallest remaining numbers and their sum, and consider the sequence of sums produced: $6,16,27,36,\dots$. Prove or disprove that there is some number in the sequence whose base $10$ representation ends with $2015$.
-/
theorem putnam_2015_b2
(sets : ℕ → Set ℕ)
(Smin3 : Set ℕ → (Fin 3 → ℕ))
(sums : ℕ → ℕ)
(hsets0 : sets 0 = Set.Ici 1)
(hmin3 : ∀ S : Set ℕ, S.encard ≥ 3 → ((Smin3 S) 0 = sInf S ∧ (Smin3 S) 1 = sInf (S \ {(Smin3 S) 0}) ∧ (Smin3 S) 2 = sInf (S \ {(Smin3 S) 0, (Smin3 S) 1})))
(hsums : ∀ n : ℕ, sums n = (Smin3 (sets n)) 0 + (Smin3 (sets n)) 1 + (Smin3 (sets n)) 2)
(hsetsn : ∀ n : ℕ, sets (n + 1) = sets n \ {(Smin3 (sets n)) 0, (Smin3 (sets n)) 1, (Smin3 (sets n)) 2, sums n})
: (∃ n : ℕ, List.IsPrefix [5, 1, 0, 2] (Nat.digits 10 (sums n))) ↔ putnam_2015_b2_solution :=
sorry
