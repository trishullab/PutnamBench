import Mathlib

abbrev putnam_1989_a1_solution : ℕ∞ := sorry
-- 1
/--
How many primes among the positive integers, written as usual in base $10$, are alternating $1$'s and $0$'s, beginning and ending with $1$?
-/
theorem putnam_1989_a1
    (pdigalt : List ℕ → Prop)
    (hpdigalt : ∀ l, pdigalt l ↔ Odd l.length ∧ (∀ i, l.get i = if Even (i : ℕ) then 1 else 0)) :
    {p : ℕ | p.Prime ∧ pdigalt (Nat.digits 10 p)}.encard = putnam_1989_a1_solution :=
  sorry
