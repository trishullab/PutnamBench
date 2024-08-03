import Mathlib
open BigOperators

open Matrix Function Real

abbrev putnam_2012_b3_solution : Prop := sorry
-- True
theorem putnam_2012_b3
(nmatchupsgames nmatchupsall : (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → Prop)
(hnmatchupsall : nmatchupsall = (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) => ∀ t1 t2 : Fin (2 * n), t1 ≠ t2 → (∃ d : Fin (2 * n - 1), matchups d t1 = t2)))
(hnmatchupsgames : nmatchupsgames = (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) => ∀ d : Fin (2 * n - 1), ∀ t : Fin (2 * n), matchups d t ≠ t ∧ matchups d (matchups d t) = t))
(nmatchupswins nmatchupswinschoices: (n : ℕ) → (Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) → (Fin (2 * n - 1) → (Fin (2 * n) → Bool)) → Prop)
(hnmatchupswins : nmatchupswins = (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)) => ∀ d : Fin (2 * n - 1), ∀ t : Fin (2 * n), wins d t = !(wins d (matchups d t))))
(hnmatchupswinschoices : nmatchupswinschoices = (fun (n : ℕ) (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)) => ∃ choices : Fin (2 * n - 1) → Fin (2 * n), (∀ d : Fin (2 * n - 1), wins d (choices d)) ∧ Function.Injective choices))
: (∀ n ≥ 1, ∀ (matchups : Fin (2 * n - 1) → (Fin (2 * n) → Fin (2 * n))) (wins : Fin (2 * n - 1) → (Fin (2 * n) → Bool)), (nmatchupsgames n matchups ∧ nmatchupsall n matchups ∧ nmatchupswins n matchups wins) → nmatchupswinschoices n matchups wins) ↔ putnam_2012_b3_solution :=
sorry
