import Mathlib
open BigOperators

open Function Set

theorem putnam_2013_a6
(w : ℤ → ℤ → ℤ)
(A : Finset (ℤ × ℤ) → ℤ)
(hwn1 : w (-2) (-2) = -1 ∧ w 2 (-2) = -1 ∧ w (-2) 2 = -1 ∧ w 2 2 = -1)
(hwn2 : w (-1) (-2) = -2 ∧ w 1 (-2) = -2 ∧ w (-2) (-1) = -2 ∧ w 2 (-1) = -2 ∧ w (-2) 1 = -2 ∧ w 2 1 = -2 ∧ w (-1) 2 = -2 ∧ w 1 2 = -2)
(hw2 : w 0 (-2) = 2 ∧ w (-2) 0 = 2 ∧ w 2 0 = 2 ∧ w 0 2 = 2)
(hw4 : w (-1) (-1) = 4 ∧ w 1 (-1) = 4 ∧ w (-1) 1 = 4 ∧ w 1 1 = 4)
(hwn4 : w 0 (-1) = -4 ∧ w (-1) 0 = -4 ∧ w 1 0 = -4 ∧ w 0 1 = -4)
(hw12 : w 0 0 = 12)
(hw0 : ∀ a b : ℤ, (|a| > 2 ∨ |b| > 2) → w a b = 0)
(hA : ∀ S : Finset (ℤ × ℤ), A S = ∑ s in S, ∑ s' in S, w (s - s').1 (s - s').2)
: ∀ S : Finset (ℤ × ℤ), Nonempty S → A S > 0 :=
sorry
