import Mathlib
open BigOperators

open Set

abbrev putnam_1985_a1_solution : ℕ × ℕ × ℕ × ℕ := sorry
-- (10, 10, 0, 0)
theorem putnam_1985_a1
: (let (a, b, c, d) := putnam_1985_a1_solution; {(A1, A2, A3) : Set ℤ × Set ℤ × Set ℤ | A1 ∪ A2 ∪ A3 = Icc 1 10 ∧ A1 ∩ A2 ∩ A3 = ∅}.ncard = 2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d) :=
sorry

open Filter Topology Real

noncomputable abbrev putnam_1985_a3_solution : ℝ → ℝ := sorry
-- fun d ↦ exp d - 1
theorem putnam_1985_a3
(d : ℝ)
(a : ℕ → ℕ → ℝ)
(ha0 : ∀ m : ℕ, a m 0 = d / 2 ^ m)
(ha : ∀ m : ℕ, ∀ j : ℕ, a m (j + 1) = (a m j) ^ 2 + 2 * a m j)
: Tendsto (fun n ↦ a n n) atTop (𝓝 (putnam_1985_a3_solution d)) :=
sorry

abbrev putnam_1985_a4_solution : Set (Fin 100) := sorry
-- {87}
theorem putnam_1985_a4
(a : ℕ → ℕ)
(ha1 : a 1 = 3)
(ha : ∀ i ≥ 1, a (i + 1) = 3 ^ a i)
: ({k : Fin 100 | ∀ N : ℕ, ∃ i ≥ N, a i % 100 = k} = putnam_1985_a4_solution) :=
sorry

open Real

abbrev putnam_1985_a5_solution : Set ℕ := sorry
-- {3, 4, 7, 8}
theorem putnam_1985_a5
(I : ℕ → ℝ := fun m ↦ ∫ x in (0)..(2 * Real.pi), ∏ k in Finset.Icc 1 m, cos (k * x))
: ({m ∈ Finset.Icc 1 10 | I m ≠ 0} = putnam_1985_a5_solution) :=
sorry

open Polynomial

noncomputable abbrev putnam_1985_a6_solution : Polynomial ℝ := sorry
-- 6 * X ^ 2 + 5 * X + 1
theorem putnam_1985_a6
(Γ : Polynomial ℝ → ℝ := fun p ↦ ∑ k in Finset.range (p.natDegree + 1), coeff p k ^ 2)
(f : Polynomial ℝ := 3 * X ^ 2 + 7 * X + 2)
: (let g := putnam_1985_a6_solution; g.eval 0 = 1 ∧ ∀ n : ℕ, n ≥ 1 → Γ (f ^ n) = Γ (g ^ n)) :=
sorry

open Function

abbrev putnam_1985_b1_solution : Fin 5 → ℤ := sorry
-- fun i ↦ i - 2
theorem putnam_1985_b1
(p : (Fin 5 → ℤ) → (Polynomial ℝ) := fun m ↦ ∏ i : Fin 5, ((X : Polynomial ℝ) - m i))
(numnzcoeff : Polynomial ℝ → ℕ := fun p ↦ {j ∈ Finset.range (p.natDegree + 1) | coeff p j ≠ 0}.ncard)
: (Injective putnam_1985_b1_solution ∧ ∀ m : Fin 5 → ℤ, Injective m → numnzcoeff (p putnam_1985_b1_solution) ≤ numnzcoeff (p m)) :=
sorry

abbrev putnam_1985_b2_solution : ℕ → ℕ := sorry
-- fun n ↦ ite (n = 101) 99 0
theorem putnam_1985_b2
(f : ℕ → ℝ → ℝ)
(hf0x : ∀ x : ℝ, f 0 x = 1)
(hfn0 : ∀ n ≥ 1, f n 0 = 0)
(hfderiv : ∀ x : ℝ, ∀ n, deriv (f (n + 1)) x = (n + 1) * f n (x + 1))
: (∃ a : ℕ, a = f 100 1 ∧ Nat.factorization a = putnam_1985_b2_solution) :=
sorry

theorem putnam_1985_b3
(a : ℕ → ℕ → ℕ)
(apos : ∀ m n : ℕ, a m n > 0)
(ha : ∀ k : ℕ, k > 0 → {(m, n) : ℕ × ℕ | m > 0 ∧ n > 0 ∧ a m n = k}.encard = 8)
: (∃ m n, m > 0 ∧ n > 0 ∧ a m n > m * n) :=
sorry

noncomputable abbrev putnam_1985_b5_solution : ℝ := sorry
-- sqrt (Real.pi / 1985) * exp (-3970)
theorem putnam_1985_b5
(fact : ∫ x in univ, exp (- x ^ 2) = sqrt (Real.pi))
: (∫ t in Set.Ioi 0, t ^ (- (1 : ℝ) / 2) * exp (-1985 * (t + t ^ (-(1 : ℝ)))) = putnam_1985_b5_solution) :=
sorry

theorem putnam_1985_b6
(n : ℕ)
(npos : n > 0)
(G : Finset (Matrix (Fin n) (Fin n) ℝ))
(groupG : (∀ g ∈ G, ∀ h ∈ G, g * h ∈ G) ∧ 1 ∈ G ∧ (∀ g ∈ G, ∃ h ∈ G, g * h = 1))
(hG : ∑ M in G, Matrix.trace M = 0)
: (∑ M in G, M = 0) :=
sorry
