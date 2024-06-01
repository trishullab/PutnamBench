import Mathlib
open BigOperators


theorem putnam_1973_a3
(b : ℕ → ℝ := fun n => sInf {(k : ℕ) + n/k | k > 0})
: ∀ n : ℕ, n > 0 → floor (b n) = floor (Real.sqrt (4 * n + 1)) :=
sorry

abbrev putnam_1973_a4_solution : ℕ := sorry
-- 3
theorem putnam_1973_a4
(f : ℝ → ℝ := fun x => 2^x - 1 - x^2)
: putnam_1973_a4_solution = {x : ℝ | f x = 0}.ncard :=
sorry

-- Note: Uses the slope/intercept formulation of line in the plane
theorem putnam_1973_a6
(h_nint : ℕ → (Fin 7 → (ℝ × ℝ)) → ℕ := fun n lines => {p : ℝ × ℝ | ∃! S : Set (Fin 7), S.ncard = n ∧ p ∈ ⋂ i ∈ S, {pts | pts.2 = (lines i).1 * pts.1 + (lines i).2}}.ncard)
: ¬ ∃ lines : Fin 7 → (ℝ × ℝ), (∀ i j : Fin 7, i ≠ j → lines i ≠ lines j) ∧ h_nint 3 lines ≥ 6 ∧ h_nint 2 lines ≥ 4 :=
sorry

theorem putnam_1973_b1
(n : ℕ)
(a : Finset.Icc 1 (2 * n + 1) → ℤ)
(h_remove : ∀ S : Finset (Finset.Icc 1 (2 * n + 1)), S.card = 2*n → ∃ T, T ⊆ S ∧ T.card = n ∧ ∑ i in T, a i = ∑ i in (S \ T), a i)
: ∀ i j : Finset.Icc 1 (2 * n + 1), a i = a j :=
sorry

theorem putnam_1973_b2
(z : ℂ)
(hzrat : ∃ q1 q2 : ℚ, z.re = q1 ∧ z.im = q2)
(hznorm : ‖z‖ = 1 )
: ∀ n : ℤ, ∃ q : ℚ, ‖z^(2*n) - 1‖ = q :=
sorry

theorem putnam_1973_b3
(p : ℕ)
(pgt1 : p > 1)
(hprime : ∀ x ∈ Set.Ico 0 p, Nat.Prime (x^2 - x + p))
: ∃! triple : ℤ × ℤ × ℤ, let (a,b,c) := triple; b^2 - 4*a*c = 1 - 4*p ∧ 0 < a ∧ a ≤ c ∧ -a ≤ b ∧ b < a :=
sorry

-- Note: Boosted domain to ℝ, which is fine because you can extend any such function f from [0,1] to ℝ satisfying the same properties. There may be multiple correct answers.
abbrev putnam_1973_b4_solution : ℝ → ℝ := sorry
-- (fun x => x)
theorem putnam_1973_b4
(f : ℝ → ℝ)
(hprop : (ℝ → ℝ) → Prop := fun g => ContDiff ℝ 1 g ∧ (∀ x : ℝ, 0 < deriv g x ∧ deriv g x ≤ 1) ∧ g 0 = 0)
(hf : hprop f)
: (∫ x in Icc 0 1, f x)^2 ≥ ∫ x in Icc 0 1, (f x)^3 ∧ (hprop putnam_1973_b4_solution ∧ (∫ x in Icc 0 1, putnam_1973_b4_solution x)^2 = ∫ x in Icc 0 1, (putnam_1973_b4_solution x)^3) :=
sorry

