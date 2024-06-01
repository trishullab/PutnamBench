import Mathlib
open BigOperators


abbrev putnam_1989_a1_solution : ℕ := sorry
-- 1
theorem putnam_1989_a1
(pdigalt : List ℕ → Prop)
(hpdigalt : ∀ pdig : List ℕ, pdigalt pdig = Odd pdig.length ∧ (∀ i : Fin pdig.length, pdig.get i = if Even (i : ℕ) then 1 else 0))
: {p : ℕ | p > 0 ∧ p.Prime ∧ pdigalt (Nat.digits 10 p)}.encard = putnam_1989_a1_solution :=
sorry

noncomputable abbrev putnam_1989_a2_solution : ℝ → ℝ → ℝ := sorry
-- (fun a b : ℝ => (Real.exp (a ^ 2 * b ^ 2) - 1) / (a * b))
theorem putnam_1989_a2
(a b : ℝ)
(abpos : a > 0 ∧ b > 0)
: ∫ x in Set.Ioo 0 a, ∫ y in Set.Ioo 0 b, Real.exp (max (b ^ 2 * x ^ 2) (a ^ 2 * y ^ 2)) = putnam_1989_a2_solution a b :=
sorry

theorem putnam_1989_a3
(z : ℂ)
(hz : 11 * z ^ 10 + 10 * I * z ^ 9 + 10 * I * z - 11 = 0)
: (‖z‖ = 1) :=
sorry

open Nat

theorem putnam_1989_a6
(F : Type*) [Field F] [Fintype F]
(hF : Fintype.card F = 2)
(α : PowerSeries F)
(hα : ∀ n : ℕ, let bin := [1] ++ (digits 2 n) ++ [1]; PowerSeries.coeff F n α = ite (∀ i j : Fin bin.length, i < j → bin.get i = 1 → bin.get j = 1 → (∀ k, i < k → k < j → bin.get k = 0) → Even ((j : ℕ) - (i : ℕ) - 1)) 1 0)
: (α ^ 3 + PowerSeries.X * α + 1 = 0) :=
sorry

-- This formalization uses "Type" rather than "Type*" as the underlying structure for a semigroup.
abbrev putnam_1989_b2_solution : Prop := sorry
-- True
theorem putnam_1989_b2
(pow : (S : Type) → ℕ → S → S)
(hpow1 : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, pow S 1 s = s)
(hpown : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, ∀ n > 0, pow S (n + 1) s = s * (pow S n s))
: ((∀ (S : Type) (_ : Nonempty S) (_ : Semigroup S) (_ : IsCancelMul S), (∀ a : S, Finite {x | ∃ n : ℕ, n > 0 ∧ pow S n a = x}) → ∃ (_ : Group S), True) ↔ putnam_1989_b2_solution) :=
sorry

open Filter Topology

noncomputable abbrev putnam_1989_b3_solution : ℕ → ℝ → ℝ := sorry
-- fun n c ↦ c * factorial n / (3 ^ n * ∏ m in Finset.Icc (1 : ℤ) n, (1 - 2 ^ (-m)))
theorem putnam_1989_b3
(f : ℝ → ℝ)
(hfdiff : Differentiable ℝ f)
(hfderiv : ∀ x > 0, deriv f x = -3 * f x + 6 * f (2 * x))
(hdecay : ∀ x ≥ 0, |f x| ≤ Real.exp (-Real.sqrt x))
(μ : ℕ → ℝ := fun n ↦ ∫ x in Set.Ioi 0, x ^ n * (f x))
: ((∀ n : ℕ, μ n = putnam_1989_b3_solution n (μ 0)) ∧ (∃ L : ℝ, Tendsto (fun n ↦ (μ n) * 3 ^ n / factorial n) ⊤ (𝓝 L)) ∧ (Tendsto (fun n ↦ (μ n) * 3 ^ n / factorial n) ⊤ (𝓝 0) → μ 0 = 0)) :=
sorry

open Set

abbrev putnam_1989_b4_solution : Prop := sorry
-- True
theorem putnam_1989_b4
: ((∃ S : Type, Countable S ∧ Infinite S ∧ ∃ C : Set (Set S), ¬Countable C ∧ (∀ R ∈ C, R ≠ ∅) ∧ (∀ A ∈ C, ∀ B ∈ C, A ≠ B → (A ∩ B).Finite)) ↔ putnam_1989_b4_solution) :=
sorry

