import Mathlib
open BigOperators

open MvPolynomial

-- Note: uses (ℕ → ℤ) instead of (Fin k → ℤ)
abbrev putnam_2003_a1_solution : ℕ → ℕ := sorry
-- fun n => n
theorem putnam_2003_a1
(n : ℕ)
(hn : n > 0)
: Set.encard {a : ℕ → ℤ | ∃ k > 0, (∑ i : Fin k, a i = n) ∧ (∀ i : Fin k, a i > 0) ∧ (∀ i : Fin (k - 1), a i ≤ a (i + 1)) ∧ a (k - 1) ≤ a 0 + 1 ∧ (∀ i ≥ k, a i = 0)} = putnam_2003_a1_solution n :=
sorry

theorem putnam_2003_a2
(n : ℕ)
(a b : Fin n → ℝ)
(abnneg : ∀ i : Fin n, a i ≥ 0 ∧ b i ≥ 0)
: (∏ i : Fin n, a i) ^ ((1 : ℝ) / n) + (∏ i : Fin n, b i) ^ ((1 : ℝ) / n) ≤ (∏ i : Fin n, (a i + b i)) ^ ((1 : ℝ) / n) :=
sorry

noncomputable abbrev putnam_2003_a3_solution : ℝ := sorry
-- 2 * Real.sqrt 2 - 1
theorem putnam_2003_a3
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = |Real.sin x + Real.cos x + Real.tan x + 1 / Real.tan x + 1 / Real.cos x + 1 / Real.sin x|)
: (∃ x : ℝ, f x = putnam_2003_a3_solution) ∧ (∀ x : ℝ, f x ≥ putnam_2003_a3_solution) :=
sorry

theorem putnam_2003_a4
(a b c A B C : ℝ)
(aAne0 : a ≠ 0 ∧ A ≠ 0)
(hle : ∀ x : ℝ, |a * x ^ 2 + b * x + c| ≤ |A * x ^ 2 + B * x + C|)
: |b ^ 2 - 4 * a * c| ≤ |B ^ 2 - 4 * A * C| :=
sorry

open Set
theorem putnam_2003_a5
(n : ℕ)
(npos : n > 0)
(dyckpath : (m : ℕ) → Set ((Fin (2 * m)) → ℤ) := fun m ↦ {p : Fin (2 * m) → ℤ |
      range p ⊆ {-1, 1} ∧ ∑ k : Fin (2 * m), p k = 0 ∧ ∀ j : Fin (2 * m), ∑ k : Fin (2 * m), ite (k ≤ j) (p k) 0 ≥ 0})
(noevenreturn : (m : ℕ) → Set ((Fin (2 * m)) → ℤ) := fun m ↦ {p : Fin (2 * m) → ℤ |
      ¬∃ i j : Fin (2 * m), i < j ∧ p i = 1 ∧ ∀ k ∈ Ioc i j, p i = -1 ∧ Even (j.1 - i.1) ∧ ∑ k : Fin (2 * m), ite (k ≤ j) (p k) 0 = 0})
: (∃ f : ((Fin (2 * n)) → ℤ) → (Fin (2 * (n - 1)) → ℤ), ∀ y ∈ dyckpath (n - 1), ∃! x, x ∈ dyckpath n ∩ noevenreturn n ∧ f x = y) :=
sorry

abbrev putnam_2003_a6_solution : Prop := sorry
-- True
theorem putnam_2003_a6
(r : Set ℕ → ℕ → ℕ)
(hr : ∀ (S : Set ℕ) (n : ℕ), r S n = ∑' s1 : S, ∑' s2 : S, if (s1 ≠ s2 ∧ s1 + s2 = n) then 1 else 0)
: (∃ A B : Set ℕ, A ∪ B = ℕ ∧ A ∩ B = ∅ ∧ (∀ n : ℕ, r A n = r B n)) ↔ putnam_2003_a6_solution :=
sorry

abbrev putnam_2003_b1_solution : Prop := sorry
-- False
theorem putnam_2003_b1
: (∃ a b c d : Polynomial ℝ, (∀ x y : ℝ, 1 + x * y + x ^ 2 * y ^ 2 = a.eval x * c.eval y + b.eval x * d.eval y)) ↔ putnam_2003_b1_solution :=
sorry

open Set
theorem putnam_2003_b2
(n : ℕ)
(hn : n > 0)
(seq : ℕ → ℕ → ℚ)
(hinit : ∀ j ∈ Icc 1 n, seq 0 j = 1 / j)
(havg : ∀ k ∈ Icc 1 (n - 1), ∀ j ∈ Icc 1 (n - k), seq k j = (seq (k - 1) j + seq (k - 1) (j + 1)) / 2)
: (seq (n - 1) 0 < 2 / n) :=
sorry

open Nat
theorem putnam_2003_b3
(multicc : ℕ → ℕ → Prop)
(lcmicc : ℕ → ℕ)
(hmulticc : ∀ n mult : ℕ, multicc n mult = ∀ i : Set.Icc 1 n, i.1 ∣ mult)
(hlcmicc : ∀ n : ℕ, multicc n (lcmicc n) ∧ (∀ n' : ℕ, multicc n n' → n' ≥ (lcmicc n)))
: ∀ n > 0, (n)! = ∏ i : Set.Icc 1 n, lcmicc (n / i.1) :=
sorry

theorem putnam_2003_b4
(f : ℝ → ℝ)
(a b c d e : ℤ)
(r1 r2 r3 r4 : ℝ)
(ane0 : a ≠ 0)
(hf1 : ∀ z : ℝ, f z = a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e)
(hf2 : ∀ z : ℝ, f z = a * (z - r1) * (z - r2) * (z - r3) * (z - r4))
: (¬Irrational (r1 + r2) ∧ r1 + r2 ≠ r3 + r4) → ¬Irrational (r1 * r2) :=
sorry

theorem putnam_2003_b5
(A B C : Fin 2 → ℝ)
(hABC : Euclidean.dist 0 A = 1 ∧ Euclidean.dist 0 B = 1 ∧ Euclidean.dist 0 C = 1 ∧ Euclidean.dist A B = Euclidean.dist A C ∧ Euclidean.dist A B = Euclidean.dist B C)
: (∃ f : ℝ → ℝ, ∀ P : Fin 2 → ℝ, Euclidean.dist 0 P < 1 → ∃ X Y Z : Fin 2 → ℝ,
      Euclidean.dist X Y = Euclidean.dist P A ∧ Euclidean.dist Y Z = Euclidean.dist P B ∧ Euclidean.dist X Z = Euclidean.dist P C ∧
      (MeasureTheory.volume (convexHull ℝ {X, Y, Z})).toReal = f (Euclidean.dist 0 P)) :=
sorry

theorem putnam_2003_b6
(f : ℝ → ℝ)
(hf : Continuous f)
: (∫ x in (0 : ℝ)..1, (∫ y in (0 : ℝ)..1, |f x + f y|)) ≥ (∫ x in (0 : ℝ)..1, |f x|) :=
sorry
