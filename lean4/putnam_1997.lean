import Mathlib
open BigOperators

open Filter Topology
noncomputable abbrev putnam_1997_a3_solution : ℝ := sorry
-- Real.sqrt (Real.exp 1)
theorem putnam_1997_a3
(series1 : ℝ → ℝ := fun x => ∑' n : ℕ, (-1)^n * x^(2*n + 1)/(∏ i : Finset.range n, 2 * ((i : ℝ) + 1)))
(series2 : ℝ → ℝ := fun x => ∑' n : ℕ, x^(2*n)/(∏ i : Finset.range n, (2 * ((i : ℝ) + 1))^2))
: Tendsto (fun t => ∫ x in Set.Icc 0 t, series1 x * series2 x) atTop (𝓝 (putnam_1997_a3_solution)) :=
sorry

theorem putnam_1997_a4
(G : Type*)
[Group G]
(φ : G → G)
(hφ : ∀ g1 g2 g3 h1 h2 h3 : G, (g1 * g2 * g3 = 1 ∧ h1 * h2 * h3 = 1) → φ g1 * φ g2 * φ g3 = φ h1 * φ h2 * φ h3)
: ∃ a : G, let ψ := fun g => a * φ g; ∀ x y : G, ψ (x * y) = ψ x * ψ y :=
sorry

abbrev putnam_1997_a5_solution : Prop := sorry
-- True
theorem putnam_1997_a5
(N := fun (n : ℕ+) => {t : Fin n → ℕ+ | (∀ i j : Fin n, i < j → t i <= t j) ∧ (∑ i : Fin n, (1 : ℝ)/(t i) = 1) })
: Odd (N 10).ncard ↔ putnam_1997_a5_solution :=
sorry

abbrev putnam_1997_a6_solution : ℤ → ℤ → ℝ := sorry
-- fun n k => Nat.choose (n.toNat-1) (k.toNat-1)
theorem putnam_1997_a6
(n : ℤ)
(hn : n > 0)
(C : ℝ)
(x : ℝ → (ℤ → ℝ))
(hx0 : ∀ c : ℝ, x c 0 = 0)
(hx1 : ∀ c : ℝ, x c 1 = 1)
(hxk : ∀ c : ℝ, ∀ k ≥ 0, x c (k + 2) = (c*(x c (k + 1)) - (n - k)*(x c k))/(k + 1))
(S : Set ℝ := {c : ℝ | x c (n + 1) = 0})
(hC : C = sSup S)
: ∀ k : Set.Icc 1 n, x C k = putnam_1997_a6_solution n k :=
sorry

abbrev putnam_1997_b1_solution : ℕ → ℝ := sorry
-- fun n => n
noncomputable def dist_to_int : ℝ → ℝ := fun r => |r - round r|
theorem putnam_1997_b1
(F : ℕ → ℝ := fun n => ∑ m in Finset.Icc 1 (6 * n - 1), min (dist_to_int (m/(6*n)) ) (dist_to_int (m/(3*n))))
: ∀ n, n > 0 → F n = putnam_1997_b1_solution n :=
sorry


open Bornology Set
theorem putnam_1997_b2
(f g : ℝ → ℝ)
(hg : ∀ x : ℝ, g x ≥ 0)
(hfderiv1 : ContDiff ℝ 1 f)
(hfderiv2 : Differentiable ℝ (deriv f))
(hfg : ∀ x : ℝ, f x + iteratedDeriv 2 f x = -x * g x * deriv f x)
: IsBounded (range (fun x => |f x|)) :=
sorry

abbrev putnam_1997_b3_solution : Set ℕ := sorry
-- {n | (1 ≤ n ∧ n ≤ 4) ∨ (20 ≤ n ∧ n ≤ 24) ∨ (100 ≤ n ∧ n ≤ 104) ∨ (120 ≤ n ∧ n ≤ 124)}
theorem putnam_1997_b3
(n : ℕ)
(hn : n > 0)
: n ∈ putnam_1997_b3_solution ↔ ¬5 ∣ (∑ m in Finset.Icc 1 n, 1/m : ℚ).den :=
sorry

open Polynomial
theorem putnam_1997_b4
(a : ℕ → ℕ → ℤ)
(ha : ∀ n m : ℕ, a n m = coeff ((1 + X + X^2)^m) n)
: ∀ k : ℕ, k ≥ 0 → (∑ i in Finset.Icc 0 (Nat.floor (2*k/(3 : ℚ))), (-1)^(i : ℕ) * (a (k - i) i : ℝ)) ∈ Set.Icc (0 : ℝ) 1 :=
sorry

def tetration : ℕ → ℕ → ℕ
  | _, 0 => 1
  | m, (n + 1) => m^(tetration m n)
theorem putnam_1997_b5
(n : ℕ)
(hn : n ≥ 2)
: tetration 2 n ≡ tetration 2 (n-1) [MOD n] :=
sorry
