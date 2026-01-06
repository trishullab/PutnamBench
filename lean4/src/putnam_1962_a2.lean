import Mathlib

open MeasureTheory Set

abbrev putnam_1962_a2_solution : Set (ℝ → ℝ) := sorry
-- {f | (∃ a c : ℝ, 0 ≤ a ∧ f = (fun x : ℝ ↦ a / (1 - c * x) ^ 2)) ∨ (∃ a c : ℝ, 0 ≤ a ∧ 0 < c ∧ f = (fun x : ℝ ↦ if x < 1 / c then a / (1 - c * x) ^ 2 else 0)) ∨ (0 ≤ f ∧ ∀ x : ℝ, 0 < x → f x = 0) ∨ (∃ e : ℝ, 0 < e ∧ f 0 = 0 ∧ 0 ≤ f ∧ ∀ x ∈ Ioo (0 : ℝ) e, (⨍ t in Ico (0 : ℝ) x, f t) = 0)}
/--
Find every real-valued function $f$ whose domain is an interval $I$ (finite or infinite) having 0 as a left-hand endpoint, such that for every positive member $x$ of $I$ the average of $f$ over the closed interval $[0, x]$ is equal to the geometric mean of the numbers $f(0)$ and $f(x)$.
-/
theorem putnam_1962_a2
    (P : Set ℝ → (ℝ → ℝ) → Prop)
    (P_def : ∀ s f, P s f ↔ 0 ≤ f ∧ ∀ x ∈ s, ⨍ t in Ico 0 x, f t = √(f 0 * f x)) :
    (∀ f,
      (P (Ioi 0) f → ∃ g ∈ putnam_1962_a2_solution, EqOn f g (Ici 0)) ∧
      (∀ e > 0, P (Ioo 0 e) f → ∃ g ∈ putnam_1962_a2_solution, EqOn f g (Ico 0 e))) ∧
    ∀ f ∈ putnam_1962_a2_solution, P (Ioi 0) f ∨ (∃ e > 0, P (Ioo 0 e) f) :=
  sorry
