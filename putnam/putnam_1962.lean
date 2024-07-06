import Mathlib

open MeasureTheory
open BigOperators

theorem putnam_1962_a1
(S : Set (ℝ × ℝ))
(hS : S.ncard = 5)
(hnoncol : ∀ s ⊆ S, s.ncard = 3 → ¬Collinear ℝ s)
: ∃ T ⊆ S, T.ncard = 4 ∧ ¬∃ t ∈ T, t ∈ convexHull ℝ (T \ {t}) :=
sorry

abbrev putnam_1962_a2_solution : Set (ℝ → ℝ) := sorry
-- {f : ℝ → ℝ | ∃ a c : ℝ, a > 0 ∧ f = fun x => a / (1 - c * x)^2}
theorem putnam_1962_a2
(hf : ℝ → (ℝ → ℝ) → Prop := fun (e : ℝ) (f : ℝ → ℝ) => ∀ x ∈ Set.Ioo 0 e, (⨍ v in Set.Icc 0 x, f v) = Real.sqrt ((f 0) * (f x)))
(hfinf : (ℝ → ℝ) → Prop := fun (f : ℝ → ℝ) => ∀ x > 0, (⨍ v in Set.Icc 0 x, f v) = Real.sqrt ((f 0) * (f x)))
: (∀ f : ℝ → ℝ, (hfinf f → ∃ g ∈ putnam_1962_a2_solution, ∀ x ≥ 0, g x = f x) ∧
∀ e > 0, hf e f → ∃ g ∈ putnam_1962_a2_solution, ∀ x ∈ Set.Ico 0 e, g x = f x) ∧
∀ f ∈ putnam_1962_a2_solution, hfinf f ∨ (∃ e > 0, hf e f) :=
sorry

-- TODO: (George), does not compile properly on my version, double check when migrating to v4.9.0
-- theorem putnam_1962_a3
-- (A B C A' B' C' P Q R : EuclideanSpace ℝ (Fin 2))
-- (k : ℝ)
-- (hk : k > 0)
-- (hABC : ¬Collinear ℝ {A, B, C})
-- (hP : A' ∈ segment ℝ B C ∧ Euclidean.dist B A' / Euclidean.dist A' C = k)
-- (hQ : B' ∈ segment ℝ C A ∧ Euclidean.dist C B' / Euclidean.dist B' A = k)
-- (hR : C' ∈ segment ℝ A B ∧ Euclidean.dist A C' / Euclidean.dist C' B = k)
-- (hU : P ∈ segment ℝ B B' ∧ P ∈ segment ℝ C C')
-- (hV : Q ∈ segment ℝ C C' ∧ Q ∈ segment ℝ A A')
-- (hW : R ∈ segment ℝ A A' ∧ W ∈ segment ℝ B B')
-- : (volume (convexHull ℝ {U, V, W})).toReal / (volume (convexHull ℝ {A, B, C})).toReal = (k - 1)^2 / (k^2 + k + 1) :=
-- sorry

theorem putnam_1962_a4
(f : ℝ → ℝ)
(a b : ℝ)
(hdiff : Differentiable ℝ f ∧ (Differentiable ℝ (deriv f)))
(hfabs : ∀ x ∈ Set.Icc a b, |f x| ≤ 1)
(hfppabs : ∀ x ∈ Set.Icc a b, |(iteratedDeriv 2 f) x| ≤ 1)
(hlen2 : b - a ≥ 2)
: ∀ x ∈ Set.Icc a b, |(iteratedDeriv 1 f) x| ≤ 2 :=
sorry

abbrev putnam_1962_a5_solution : ℕ → ℕ := sorry
-- fun n : ℕ => n * (n + 1) * 2^(n - 2)
theorem putnam_1962_a5
: ∀ n ≥ 2, putnam_1962_a5_solution n = ∑ k in Finset.Icc 1 n, Nat.choose n k * k^2 :=
sorry

theorem putnam_1962_a6
(S : Set ℚ)
(hSadd : ∀ a ∈ S, ∀ b ∈ S, a + b ∈ S)
(hSprod : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(hScond : ∀ r : ℚ, (r ∈ S ∨ -r ∈ S ∨ r = 0) ∧ ¬(r ∈ S ∧ -r ∈ S) ∧ ¬(r ∈ S ∧ r = 0) ∧ ¬(-r ∈ S ∧ r = 0))
: S = { r : ℚ | r > 0 } :=
sorry

theorem putnam_1962_b1
(p : ℕ → ℝ → ℝ)
(x y : ℝ)
(n : ℕ)
(h0 : p 0 = fun x : ℝ => 1)
(hp : ∀ n > 0, p n = fun x : ℝ => ∏ i in Finset.range n, (x - i))
: p n (x+y) = ∑ k in Finset.range (n+1), Nat.choose n k * (p k x) * (p (n - k) y) :=
sorry

--Note: The original problem requires a function to be exhibited, but in the official archives the solution depends on an enumeration of the rationals, so we modify the problem to be an existential statement.
theorem putnam_1962_b2
: ∃ f : ℝ → Set ℕ+, ∀ a b : ℝ, a < b → f a ⊂ f b :=
sorry

theorem putnam_1962_b3
(S : Set (EuclideanSpace ℝ (Fin 2)))
(hS : Convex ℝ S ∧ 0 ∈ S)
(htopo : (0 ∈ interior S) ∨ IsClosed S)
(hray : ∀ P : EuclideanSpace ℝ (Fin 2), P ≠ 0 → ∃ Q : EuclideanSpace ℝ (Fin 2), SameRay ℝ P Q ∧ Q ∉ S)
: Bornology.IsBounded S :=
sorry

theorem putnam_1962_b5
(n : ℤ)
(ng1 : n > 1)
: (3 * (n : ℝ) + 1) / (2 * n + 2) < ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) ∧ ∑ i : Finset.Icc 1 n, ((i : ℝ) / n) ^ (n : ℝ) < 2 :=
sorry

theorem putnam_1962_b6
(π : ℝ := Real.pi)
(n : ℕ)
(a b : ℕ → ℝ)
(xs : Set ℝ)
(f : ℝ → ℝ := fun x : ℝ => ∑ k in Finset.Icc 0 n, ((a k) * Real.sin (k * x) + (b k) * Real.cos (k * x)))
(hf1 : ∀ x ∈ Set.Icc 0 (2 * π), |f x| ≤ 1)
(hxs : xs.ncard = 2 * n ∧ xs ⊆ Set.Ico 0 (2 * π))
(hfxs : ∀ x ∈ xs, |f x| = 1)
: (¬∃ c : ℝ, f = fun x : ℝ => c) → ∃ a : ℝ, f = fun x : ℝ => Real.cos (n * x + a) :=
sorry
