import Mathlib
open BigOperators

open Nat Set MeasureTheory Topology Filter

--TODO: (George) Check for Euclidean.dist issues when migrating to v4.9.0
theorem putnam_1973_a1
(A B C X Y Z : EuclideanSpace ℝ (Fin 2))
(hnoncol : ¬Collinear ℝ {A, B, C})
(hX : X ∈ segment ℝ B C)
(hY : Y ∈ segment ℝ C A)
(hZ : Z ∈ segment ℝ A B)
: ((Euclidean.dist B X ≤ Euclidean.dist X C ∧ Euclidean.dist C Y ≤ Euclidean.dist Y A ∧ Euclidean.dist A Z ≤ Euclidean.dist Z B) →
volume (convexHull ℝ {X, Y, Z}) ≥ (1/4) * volume (convexHull ℝ {A, B, C})) ∧
sInf {volume (convexHull ℝ {A, Z, Y}), volume (convexHull ℝ {B, X, Z}), volume (convexHull ℝ {C, Y, X})} ≤ volume (convexHull ℝ {X, Y, Z}) :=
sorry

abbrev putnam_1973_a2_solution : Prop := sorry
-- True
theorem putnam_1973_a2
(L : List ℝ)
(hL : L.length = 8 ∧ ∀ i : Fin L.length, L[i] = 1 ∨ L[i] = -1)
(pluses : ℕ := {i : Fin L.length | L[i] = 1}.ncard)
(S : ℕ → ℝ := fun n : ℕ ↦ ∑ i in Finset.Icc 1 n, L[i % 8]/i)
: (pluses = 4 → ∃ l : ℝ, Tendsto S atTop (𝓝 l)) ∧ (putnam_1973_a2_solution ↔ ((∃ l : ℝ, Tendsto S atTop (𝓝 l)) → pluses = 4)) :=
sorry

theorem putnam_1973_a3
(b : ℤ → ℝ := fun n => sInf {k + (n : ℝ)/(k : ℝ) | k > (0 : ℤ)})
: ∀ n : ℤ, n > 0 → floor (b n) = floor (Real.sqrt (4 * n + 1)) :=
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
(hznorm : ‖z‖ = 1)
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
