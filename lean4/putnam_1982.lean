import Mathlib
open BigOperators

open Set Function Filter Topology Polynomial Real

abbrev putnam_1982_a2_solution : Prop := sorry
-- True
theorem putnam_1982_a2
(B : ℕ → ℝ → ℝ := fun n x ↦ ∑ k in Finset.Icc 1 n, k ^ x)
(f : ℕ → ℝ := fun n ↦ B n (logb n 2) / (n * logb 2 n) ^ 2)
: (∃ L : ℝ, Tendsto (fun N ↦ ∑ j in Finset.Icc 2 N, f j) ⊤ (𝓝 L)) ↔ putnam_1982_a2_solution :=
sorry

noncomputable abbrev putnam_1982_a3_solution : ℝ := sorry
-- (Real.pi / 2) * log Real.pi
theorem putnam_1982_a3
: (Tendsto (fun t ↦ ∫ x in (0)..t, (arctan (Real.pi * x) - arctan x) / x) ⊤ (𝓝 putnam_1982_a3_solution)) :=
sorry

theorem putnam_1982_a5
(a b c d : ℤ)
(hpos : a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0)
(hac : a + c ≤ 1982)
(hfrac : (a : ℝ) / b + (c : ℝ) / d < 1)
: (1 - (a : ℝ) / b - (c : ℝ) / d > 1 / 1983 ^ 3) :=
sorry

abbrev putnam_1982_a6_solution : Prop := sorry
-- False
theorem putnam_1982_a6
(S : Set ℕ := Ici 1)
(hb : (ℕ → ℕ) → Prop := fun b : ℕ → ℕ => BijOn b S S)
(hx : (ℕ → ℝ) → Prop := fun x : ℕ → ℝ => StrictAntiOn (fun n : ℕ => |x n|) S)
(limb : (ℕ → ℕ) × (ℕ → ℝ) → Prop := fun (b, x) => Tendsto (fun n : ℕ => |b n - (n : ℤ)| * |x n|) atTop (𝓝 0))
(limx : (ℕ → ℝ) → Prop := fun x : ℕ → ℝ => Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x k) atTop (𝓝 1))
: (∀ b : ℕ → ℕ, ∀ x : ℕ → ℝ, hb b ∧ hx x ∧ limb (b, x) ∧ limx x →
Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x (b k)) atTop (𝓝 1)) ↔ putnam_1982_a6_solution :=
sorry

open Polynomial

noncomputable abbrev putnam_1982_b2_solution : Polynomial ℝ := sorry
-- C Real.pi * (2*X - 1)^2
theorem putnam_1982_b2
(A : ℝ × ℝ → ℕ := fun (x, y) => {(m, n) : ℤ × ℤ | m^2 + n^2 ≤ x^2 + y^2}.ncard)
(g : ℝ := ∑' k : ℕ, Real.exp (-k^2))
(I : ℝ := ∫ y : ℝ, ∫ x : ℝ, A (x, y) * Real.exp (-x^2 - y^2))
: I = putnam_1982_b2_solution.eval g :=
sorry

noncomputable abbrev putnam_1982_b3_solution : ℝ := sorry
-- 4/3 * (Real.sqrt 2 - 1)
theorem putnam_1982_b3
(p : ℕ → ℝ := fun n : ℕ => {(c, d) : Finset.Icc 1 n × Finset.Icc 1 n | ∃ m : ℕ, m^2 = c + d}.ncard / n^2)
: Tendsto (fun n : ℕ => p n * Real.sqrt n) atTop (𝓝 putnam_1982_b3_solution) :=
sorry

abbrev putnam_1982_b4_solution : Prop × Prop := sorry
-- (True, True)
theorem putnam_1982_b4
(hn : Finset ℤ → Prop := fun n : Finset ℤ => ∀ k : ℤ, ∏ i in n, i ∣ ∏ i in n, (i + k))
: ((∀ n : Finset ℤ, hn n → (∃ i ∈ n, |i| = 1)) ↔ putnam_1982_b4_solution.1) ∧
((∀ n : Finset ℤ, (hn n ∧ ∀ i ∈ n, i > 0) → n = Finset.Icc (1 : ℤ) (n.card)) ↔ putnam_1982_b4_solution.2) :=
sorry

theorem putnam_1982_b5
(T : Set ℝ := Ioi (Real.exp (Real.exp 1)))
(S : ℝ → ℕ → ℝ)
(hS : ∀ x ∈ T, S x 0 = (Real.exp 1) ∧ ∀ n : ℕ, S x (n + 1) = Real.logb (S x n) x)
(g : ℝ → ℝ)
: ∀ x ∈ T, (∃ L : ℝ, Tendsto (S x) atTop (𝓝 L)) ∧
(∀ x ∈ T, Tendsto (S x) atTop (𝓝 (g x))) → ContinuousOn g T :=
sorry
