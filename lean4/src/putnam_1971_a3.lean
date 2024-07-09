import Mathlib
open BigOperators

open Set

theorem putnam_1971_a3
(a b c : ℝ × ℝ)
(R : ℝ)
(habclattice : a.1 = round a.1 ∧ a.2 = round a.2 ∧ b.1 = round b.1 ∧ b.2 = round b.2 ∧ c.1 = round c.1 ∧ c.2 = round c.2)
(habcneq : a ≠ b ∧ a ≠ c ∧ b ≠ c)
(hR : R > 0)
(oncircle : (ℝ × ℝ) → ℝ → (ℝ × ℝ) → Prop := fun C r p => Euclidean.dist p C = r)
(hcircle : ∃ C : ℝ × ℝ, oncircle C R a ∧ oncircle C R b ∧ oncircle C R c)
: (Euclidean.dist a b) * (Euclidean.dist a c) * (Euclidean.dist b c) ≥ 2 * R :=
sorry
