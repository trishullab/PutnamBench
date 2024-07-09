import Mathlib
open BigOperators


abbrev putnam_1983_a1_solution : ℕ := sorry
-- 2301
theorem putnam_1983_a1
: {n : ℤ | n > 0 ∧ (n ∣ 10 ^ 40 ∨ n ∣ 20 ^ 30)}.encard = putnam_1983_a1_solution :=
sorry

theorem putnam_1983_a3
(p : ℕ)
(F : ℕ → ℕ)
(poddprime : Odd p ∧ p.Prime)
(hF : ∀ n : ℕ, F n = ∑ i in Finset.range (p - 1), (i + 1) * n ^ i)
: ∀ a ∈ Finset.Icc 1 p, ∀ b ∈ Finset.Icc 1 p, a ≠ b → ¬(F a ≡ F b [MOD p]) :=
sorry

open Nat

theorem putnam_1983_a4
(k : ℕ)
(kpos : k > 0)
(m : ℕ := 6 * k - 1)
(S : ℤ := ∑ j in Finset.Icc 1 (2 * k - 1), (-1) ^ (j + 1) * choose m (3 * j - 1))
: (S ≠ 0) :=
sorry

abbrev putnam_1983_a5_solution : Prop := sorry
-- True
theorem putnam_1983_a5
: ((∃ α : ℝ, α > 0 ∧ ∀ n : ℕ, n > 0 → Even (⌊α ^ n⌋ - n)) ↔ putnam_1983_a5_solution) :=
sorry

open Filter Topology Real

noncomputable abbrev putnam_1983_a6_solution : ℝ := sorry
-- 2 / 9
theorem putnam_1983_a6
(F : ℝ → ℝ := fun a ↦ (a ^ 4 / exp (a ^ 3)) * ∫ x in (0)..a, ∫ y in (0)..(a - x), exp (x ^ 3 + y ^ 3))
: (Tendsto F atTop (𝓝 putnam_1983_a6_solution)) :=
sorry

abbrev putnam_1983_b2_solution : Prop := sorry
-- True
theorem putnam_1983_b2
(f : ℕ+ → ℕ := fun n ↦ {M : Multiset ℕ | (∀ m ∈ M, ∃ k : ℕ, m = (2 ^ k : ℤ)) ∧ (∀ m ∈ M, M.count m ≤ 3) ∧ (M.sum : ℤ) = n}.ncard)
: ((∃ p : Polynomial ℝ, ∀ n : ℕ+, ⌊p.eval (n : ℝ)⌋ = f n) ↔ putnam_1983_b2_solution) :=
sorry

theorem putnam_1983_b4
(f : ℕ → ℤ := fun n ↦ n + Int.floor (Real.sqrt n))
(a : ℕ → ℕ)
(ha0 : a 0 > 0)
(han : ∀ n : ℕ, a (n + 1) = f (a n))
: (∃ i : ℕ, ∃ s : ℤ, a i = s ^ 2) :=
sorry

noncomputable abbrev putnam_1983_b5_solution : ℝ := sorry
-- log (4 / Real.pi)
theorem putnam_1983_b5
(dist : ℝ → ℝ := fun x ↦ min (x - ⌊x⌋) (⌈x⌉ - x))
(fact : Tendsto (fun N ↦ ∏ n in Finset.Icc 1 N, (2 * n / (2 * n - 1)) * (2 * n / (2 * n + 1)) : ℕ → ℝ) atTop (𝓝 (Real.pi / 2)))
: (Tendsto (fun n ↦ (1 / n) * ∫ x in (1)..n, dist (n / x) : ℕ → ℝ) atTop (𝓝 putnam_1983_b5_solution)) :=
sorry

open Polynomial

theorem putnam_1983_b6
(n : ℕ)
(npos : n > 0)
(α : ℂ)
(hα : α ^ (2 ^ n + 1) - 1 = 0 ∧ α ≠ 1)
: (∃ p q : Polynomial ℤ, (aeval α p) ^ 2 + (aeval α q) ^ 2 = -1) :=
sorry
