import Mathlib
open BigOperators


abbrev putnam_1980_a2_solution : ℕ → ℕ → ℕ := sorry
-- (fun r s : ℕ => (1 + 4 * r + 6 * r ^ 2) * (1 + 4 * s + 6 * s ^ 2))
theorem putnam_1980_a2
(r s : ℕ)
(abcdlcm : ℕ → ℕ → ℕ → ℕ → Prop)
(rspos : r > 0 ∧ s > 0)
(habcdlcm : ∀ a b c d : ℕ, abcdlcm a b c d = (a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0 ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a b) c) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a b) d) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a c) d) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm b c) d)))
: {(a, b, c, d) : ℕ × ℕ × ℕ × ℕ | abcdlcm a b c d}.encard = putnam_1980_a2_solution r s :=
sorry

noncomputable abbrev putnam_1980_a3_solution : ℝ := sorry
-- Real.pi / 4
theorem putnam_1980_a3
: ∫ x in Set.Ioo 0 (Real.pi / 2), 1 / (1 + (Real.tan x) ^ (Real.sqrt 2)) = putnam_1980_a3_solution :=
sorry

theorem putnam_1980_a4
(abcvals : ℤ → ℤ → ℤ → Prop)
(habcvals : ∀ a b c : ℤ, abcvals a b c = (¬(a = 0 ∧ b = 0 ∧ c = 0) ∧ |a| < 1000000 ∧ |b| < 1000000 ∧ |c| < 1000000))
: (∃ a b c : ℤ, abcvals a b c ∧ |a + b * Real.sqrt 2 + c * Real.sqrt 3| < 10 ^ (-(11 : ℝ))) ∧ (∀ a b c : ℤ, abcvals a b c → |a + b * Real.sqrt 2 + c * Real.sqrt 3| > 10 ^ (-(21 : ℝ))) :=
sorry

theorem putnam_1980_a5
(P : Polynomial ℝ)
(xeqs : ℝ → Prop)
(Pnonconst : P.degree > 0)
(hxeqs : ∀ x : ℝ, xeqs x = (0 = (∫ t in (0)..x, P.eval t * Real.sin t) ∧ 0 = (∫ t in (0)..x, P.eval t * Real.cos t)))
: {x : ℝ | xeqs x}.Finite :=
sorry

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (0 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_1980_a6_solution : ℝ := sorry
-- 1 / Real.exp 1
theorem putnam_1980_a6
(C : Set (ℝ → ℝ))
(uleint : ℝ → Prop)
(hC : C = {f : ℝ → ℝ | ContDiffOn ℝ 1 f (Set.Icc 0 1) ∧ f 0 = 0 ∧ f 1 = 1})
(huleint : ∀ u : ℝ, uleint u = ∀ f ∈ C, u ≤ (∫ x in Set.Ioo 0 1, |deriv f x - f x|))
: uleint putnam_1980_a6_solution ∧ (∀ u : ℝ, uleint u → u ≤ putnam_1980_a6_solution) :=
sorry

abbrev putnam_1980_b1_solution : Set ℝ := sorry
-- {c : ℝ | c ≥ 1 / 2}
theorem putnam_1980_b1
(c : ℝ)
: (∀ x : ℝ, (Real.exp x + Real.exp (-x)) / 2 ≤ Real.exp (c * x ^ 2)) ↔ c ∈ putnam_1980_b1_solution :=
sorry

abbrev putnam_1980_b3_solution : Set ℝ := sorry
-- {a : ℝ | a ≥ 3}
theorem putnam_1980_b3
(a : ℝ)
(u : ℕ → ℝ)
(hu : u 0 = a ∧ (∀ n : ℕ, u (n + 1) = 2 * u n - n ^ 2))
: (∀ n : ℕ, u n > 0) ↔ a ∈ putnam_1980_b3_solution :=
sorry

theorem putnam_1980_b4
{T : Type}
(X : Finset T)
(A : Fin 1066 → Finset T)
(hX : X.card ≥ 10)
(hA : ∀ i : Fin 1066, A i ⊆ X ∧ (A i).card > ((1 : ℚ)/2) * X.card)
: ∃ Y : Finset T, Y ⊆ X ∧ Y.card = 10 ∧ ∀ i : Fin 1066, ∃ y ∈ Y, y ∈ A i :=
sorry

open Set

abbrev putnam_1980_b5_solution : ℝ → Prop := sorry
-- fun t : ℝ => 1 ≥ t
theorem putnam_1980_b5
(T : Set ℝ := Icc 0 1)
(P : ℝ → (ℝ → ℝ) → Prop := fun t : ℝ => fun f : ℝ → ℝ => f 1 - 2*f (2/3) + f (1/3) ≥ t*(f (2/3) - 2*f (1/3) + f 0))
(Convex : (ℝ → ℝ) → Prop := fun f : ℝ → ℝ => ∀ u ∈ T, ∀ v ∈ T, ∀ s ∈ T, f (s*u + (1 - s)*v) ≤ s*(f u) + (1 - s)*(f v))
(S : ℝ → Set (ℝ → ℝ) := fun t : ℝ => {f : ℝ → ℝ | (∀ x ∈ T, f x ≥ 0) ∧ StrictMonoOn f T ∧ Convex f ∧ ContinuousOn f T ∧ P t f})
: ∀ t : ℝ, t ≥ 0 → ((∀ f ∈ S t, ∀ g ∈ S t, f * g ∈ S t) ↔ putnam_1980_b5_solution t) :=
sorry

theorem putnam_1980_b6
(G : ℕ × ℕ → ℚ)
(hG : ∀ d n : ℕ, d ≤ n → (d = 1 → G (d, n) = (1 : ℝ)/n) ∧ (d > 1 → G (d, n) = ((d : ℝ)/n)*∑ i in Finset.Icc d n, G (d - 1, i - 1)))
: ∀ d p : ℕ, 1 < d ∧ d ≤ p ∧ Prime p → ¬p ∣ (G (d, p)).den :=
sorry

