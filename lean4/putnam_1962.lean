import Mathlib

open MeasureTheory
open BigOperators

theorem putnam_1962_a1
(p : Fin 5 → (ℝ × ℝ))
(hnoncol : ∀ i j k : Fin 5, i ≠ j ∧ j ≠ k ∧ i ≠ k → ¬ Collinear ℝ { p i, p j, p k })
: ∃ i : Fin 5, Convex ℝ ({p 0, p 1, p 2, p 3, p 4} \ {p i}) :=
sorry

abbrev putnam_1962_a2_solution : Set (ℝ → ℝ) := sorry
-- { f | ∃ a c : ℝ, a > 0 ∧ f = fun x => a / (1 - c * x)^2 }
theorem putnam_1962_a2
(hf : ℝ → (ℝ → ℝ) → Prop := fun e f => ∀ x ∈ Set.Ioc 0 e, (⨍ v in Set.Icc 0 x, f v) = Real.sqrt ((f 0) * (f x)))
(hfinf : (ℝ → ℝ) → Prop := fun f => ∀ x > 0, (⨍ v in Set.Icc 0 x, f v) = Real.sqrt ((f 0) * (f x)))
: ∀ f, (hfinf f ∨ (∃ e, hf e f)) ↔ f ∈ putnam_1962_a2_solution :=
sorry

theorem putnam_1962_a4
(f : ℝ → ℝ)
(a b : ℝ)
(hfabs : ∀ x ∈ Set.Icc a b, |f x| <= 1)
(hfppabs : ∀ x ∈ Set.Icc a b, |(iteratedDeriv 2 f) x| <= 1)
(hlen2 : b - a >= 2)
: ∀ x ∈ Set.Icc a b, |(iteratedDeriv 1 f) x| <= 2 :=
sorry

abbrev putnam_1962_a5_solution : ℕ → ℕ := sorry
-- fun n => n * (n+1) * (2^(n-2))
theorem putnam_1962_a5
: putnam_1962_a5_solution = (fun n => ∑ k : Finset.Icc 1 n, Nat.choose n k * k^2) :=
sorry

theorem putnam_1962_a6
(S : Set ℚ)
(hSadd : ∀ a ∈ S, ∀ b ∈ S, a + b ∈ S)
(hSprod : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(hScond : ∀ r : ℚ, (r ∈ S ∨ -r ∈ S ∨ r = 0) ∧ ¬(r ∈ S ∧ -r ∈ S) ∧ ¬(r ∈ S ∧ r = 0) ∧ ¬(-r ∈ S ∧ r = 0))
: S = { r : ℚ | r > 0 } :=
sorry

theorem putnam_1962_b1
(p : ℝ → ℕ → ℝ := fun x n => ∏ i : Finset.range n, (x - i))
(x y : ℝ)
(n : ℕ)
(npos : n > 0)
(hx0 : p x 0 = 1)
: p (x+y) n = ∑ k : Finset.range (n+1), Nat.choose n k * (p x k) * (p y (n - k)) :=
sorry

theorem putnam_1962_b5
(n : ℤ)
(ng1 : n > 1)
: (3 * (n : ℝ) + 1) / (2 * n + 2) < ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) ∧ ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) < 2 :=
sorry

theorem putnam_1962_b6
(n : ℕ)
(a b : Fin n → ℝ)
(npos : n > 0)
(f : ℝ → ℝ := fun x => ∑ k : Fin n, ((a k) * Real.sin (k * x) + (b k) * Real.cos (k * x)))
(hf1 : ∀ x ∈ Set.Icc 0 (2 * π), |f x| <= 1)
(xs : Fin (2*n) → ℝ)
(xsrange : ∀ i, xs i >= 0 ∧ xs i < 2 * π)
(xsord : ∀ i j, i < j → xs i < xs j)
(xsabs : ∀ i, |f (xs i)| = 1)
: ∃ a : ℝ, f = fun x => Real.cos (n * x + a) :=
sorry
