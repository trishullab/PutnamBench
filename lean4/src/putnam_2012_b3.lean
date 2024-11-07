import Mathlib

open Matrix Function Real

abbrev putnam_2012_b3_solution : Prop := sorry
-- True
/--
A round-robin tournament of $2n$ teams lasted for $2n-1$ days, as follows. On each day, every team played one game against another team, with one team winning and one team losing in each of the $n$ games. Over the course of the tournament, each team played every other team exactly once. Can one necessarily choose one winning team from each day without choosing any team more than once?
-/
theorem putnam_2012_b3
(nmatchupsgames nmatchupsall : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → Prop)
(nmatchupswins nmatchupswinschoices: (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → (Fin (2 * n - 1) → (Fin (2 * n) → Bool)) → Prop)
(hnmatchupsall : ∀ n matchups, nmatchupsall n matchups ↔ ∀ t1 t2, t1 ≠ t2 → (∃ d, matchups d t1 = t2))
(hnmatchupsgames : ∀ n matchups, nmatchupsgames n matchups ↔ ∀ d, ∀ t, matchups d t ≠ t ∧ matchups d (matchups d t) = t)
(hnmatchupswins : ∀ n matchups wins, nmatchupswins n matchups wins ↔ ∀ d t, wins d t = !(wins d (matchups d t)))
(hnmatchupswinschoices : ∀ n matchups wins, nmatchupswinschoices n matchups wins ↔ ∃ choices, (∀ d, wins d (choices d)) ∧ Function.Injective choices) :
  (∀ n ≥ 1, ∀ matchups wins,
    (nmatchupsgames n matchups ∧ nmatchupsall n matchups ∧ nmatchupswins n matchups wins) →
    nmatchupswinschoices n matchups wins)
  ↔ putnam_2012_b3_solution :=
sorry
