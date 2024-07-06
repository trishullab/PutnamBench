import Mathlib
open BigOperators


-- Note: Modified definition of tangent to handle this problem
abbrev putnam_2007_a1_solution : Set ℝ := sorry
-- {2/3, 3/2, (13 + Real.sqrt 601)/12, (13 - Real.sqrt 601)/12}
def reflect_tangent (f g : ℝ → ℝ) := ContDiff ℝ 1 f ∧ ContDiff ℝ 1 g ∧ (∃ x y : ℝ, f x = y ∧ g y = x ∧ (deriv f) x = 1 / (deriv g) y)
theorem putnam_2007_a1
: ∀ a : ℝ, reflect_tangent (fun x => a * x^2 + a * x + 1/24) (fun y => a * y^2 + a * y + 1/24) ↔ a ∈ putnam_2007_a1_solution :=
sorry

noncomputable abbrev putnam_2007_a2_solution : ENNReal := sorry
-- 4
theorem putnam_2007_a2
(Sinterpos : Set (Fin 2 → ℝ) → Prop)
(Sinterneg : Set (Fin 2 → ℝ) → Prop)
(Sconv : Set (Fin 2 → ℝ) → Prop)
(hSinterpos : ∀ S : Set (Fin 2 → ℝ), Sinterpos S = ((∃ p ∈ S, p 0 > 0 ∧ p 1 > 0 ∧ p 0 * p 1 = 1) ∧ (∃ p ∈ S, p 0 < 0 ∧ p 1 < 0 ∧ p 0 * p 1 = 1)))
(hSinterneg : ∀ S : Set (Fin 2 → ℝ), Sinterneg S = ((∃ p ∈ S, p 0 < 0 ∧ p 1 > 0 ∧ p 0 * p 1 = -1) ∧ (∃ p ∈ S, p 0 > 0 ∧ p 1 < 0 ∧ p 0 * p 1 = -1)))
(hSconv : ∀ S : Set (Fin 2 → ℝ), Sconv S = (Convex ℝ S ∧ Sinterpos S ∧ Sinterneg S))
: (∃ S : Set (Fin 2 → ℝ), Sconv S ∧ MeasureTheory.volume S = putnam_2007_a2_solution) ∧ (∀ S : Set (Fin 2 → ℝ), Sconv S → MeasureTheory.volume S ≥ putnam_2007_a2_solution) :=
sorry

open Set
abbrev putnam_2007_a3_solution : ℕ → ℚ := sorry
-- fun k ↦ (k)! * (k + 1)! / ((3 * k + 1) * (2 * k)!)
theorem putnam_2007_a3
(k : ℕ)
(kpos : k > 0)
(perms : Set (Fin (3 * k + 1) → ℤ) := {f : Fin (3 * k + 1) → ℤ | ∀ y ∈ Icc 1 (3 * k + 1), ∃! x : Fin (3 * k + 1), f x = y})
(goodperms : Set (Fin (3 * k + 1) → ℤ) := {f ∈ perms | ¬∃ j : Fin (3 * k + 1), 3 ∣ ∑ i : Fin (3 * k + 1), ite (i ≤ j) (f i) 0})
: (goodperms.ncard = perms.ncard * (putnam_2007_a3_solution k)) :=
sorry

open Nat
abbrev putnam_2007_a4_solution : Set (Polynomial ℝ) := sorry
-- {f : Polynomial ℝ | ∃ d : ℕ, ∃ c ≥ (1 : ℤ) - d, ∀ n : ℝ, f.eval n = (1 / 9) * ((10 ^ c) * (9 * n + 1) ^ d - 1)}
theorem putnam_2007_a4
(S : Set (Polynomial ℝ))
(repunit : ℝ → Prop := fun x ↦ x > 0 ∧ x = floor x ∧ ∀ d ∈ (digits 10 (floor x)), d = 1)
(hS : ∀ f : Polynomial ℝ, f ∈ S ↔ (∀ n : ℝ, repunit n → repunit (f.eval n)))
: (S = putnam_2007_a4_solution) :=
sorry

theorem putnam_2007_a5
(G : Type*) [Group G] [Fintype G]
(p : ℕ)
(n : ℕ)
(hp : Nat.Prime p)
(hn : n = {g : G | orderOf g = p}.encard)
: n = 0 ∨ p ∣ (n + 1) :=
sorry

theorem putnam_2007_b1
(f : Polynomial ℤ)
(hf : ∀ n : ℕ, f.coeff n ≥ 0)
(hfnconst : ∃ n : ℕ, n > 0 ∧ f.coeff n > 0)
(n : ℤ)
(hn : n > 0)
: f.eval n ∣ f.eval (f.eval n + 1) ↔ n = 1 :=
sorry

open Function Set
theorem putnam_2007_b2
(f : ℝ → ℝ)
(hf : ContDiffOn ℝ 1 f (Icc 0 1))
(hfint : ∫ x in (0)..1, f x = 0)
(max : ℝ)
(heqmax : ∃ x ∈ Icc (0 : ℝ) 1, |deriv f x| = max)
(hmaxub : ∀ x ∈ Icc (0 : ℝ) 1, |deriv f x| ≤ max)
: (∀ α ∈ (Ioo (0 : ℝ) 1), |∫ x in (0)..α, f x| ≤ (1 / 8) * max) :=
sorry

noncomputable abbrev putnam_2007_b3_solution : ℝ := sorry
-- (2 ^ 2006 / Real.sqrt 5) * (((1 + Real.sqrt 5) / 2) ^ 3997 - ((1 + Real.sqrt 5) / 2) ^ (-3997 : ℤ))
theorem putnam_2007_b3
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hx : ∀ n : ℕ, x (n + 1) = 3 * (x n) + ⌊(x n) * Real.sqrt 5⌋)
: (x 2007 = putnam_2007_b3_solution) :=
sorry

abbrev putnam_2007_b4_solution : ℕ → ℕ := sorry
-- fun n ↦ 2 ^ (n + 1)
theorem putnam_2007_b4
(n : ℕ)
(npos : n > 0)
: ({(P, Q) : (Polynomial ℝ) × (Polynomial ℝ) | P ^ 2 + Q ^ 2 = Polynomial.X ^ (2 * n) + 1 ∧ P.degree > Q.degree}.ncard = putnam_2007_b4_solution n) :=
sorry

theorem putnam_2007_b5
(k : ℕ)
(kpos : k > 0)
: (∃ P : Finset.range k → Polynomial ℝ, ∀ n : ℤ, ⌊(n : ℝ) / k⌋ ^ k = ∑ i : Finset.range k, (P i).eval (n : ℝ) * ⌊(n : ℝ) / k⌋ ^ (i : ℕ)) :=
sorry

theorem putnam_2007_b6
(f : ℕ → ℕ := fun n ↦ {M : Multiset ℕ | M.sum = (n)! ∧ ∀ m ∈ M, ∃ k ∈ Icc 1 n, m = (k)!}.ncard)
: (∃ C : ℝ, ∀ n : ℕ, n ≥ 2 → n ^ (n ^ 2 / 2 - C * n) * Real.exp (-(n ^ 2) / 4) ≤ f n ∧ f n ≤ n ^ (n ^ 2 / 2 + C * n) * Real.exp (-(n ^ 2) / 4)) :=
sorry
