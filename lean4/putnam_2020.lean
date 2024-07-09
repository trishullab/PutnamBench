import Mathlib
open BigOperators


abbrev putnam_2020_a1_solution : ℕ := sorry
-- 508536
theorem putnam_2020_a1
: Set.ncard {x : ℕ | (2020 ∣ x) ∧ (Nat.log 10 x) + 1 ≤ 2020 ∧ (∃ k l, k ≥ l ∧ x = ∑ i in Finset.range (k-l+1), 10 ^ (i+l))} = putnam_2020_a1_solution :=
sorry

abbrev putnam_2020_a2_solution : ℕ → ℕ := sorry
-- fun k ↦ 4 ^ k
theorem putnam_2020_a2
(k : ℕ)
: (∑ j in Finset.Icc 0 k, 2 ^ (k - j) * Nat.choose (k + j) j = putnam_2020_a2_solution k) :=
sorry

open Filter Topology Set

abbrev putnam_2020_a3_solution : Prop := sorry
-- False
theorem putnam_2020_a3
(a : ℕ → ℝ)
(ha0 : a 0 = Real.pi / 2)
(ha : ∀ n : ℕ, n ≥ 1 → a n = Real.sin (a (n - 1)))
: (∃ L : ℝ, Tendsto (fun m : ℕ => ∑ n : Icc 1 m, (a n)^2) atTop (𝓝 L)) ↔ putnam_2020_a3_solution :=
sorry

abbrev putnam_2020_a5_solution : ℤ := sorry
-- (Nat.fib 4040) - 1
theorem putnam_2020_a5
(a : ℤ → ℕ := fun n : ℤ => {S : Finset ℕ | (∀ k ∈ S, k > 0) ∧ ∑ k : S, Nat.fib k = n}.ncard)
: a putnam_2020_a5_solution = 2020 ∧ ∀ n : ℤ, a n = 2020 → n ≤ putnam_2020_a5_solution :=
sorry

noncomputable abbrev putnam_2020_a6_solution : ℝ := sorry
-- Real.pi / 4
theorem putnam_2020_a6
(f : ℤ → (ℝ → ℝ) := fun N : ℤ => fun x : ℝ =>
∑ n in Finset.Icc 0 N, (N + 1/2 - n)/((N + 1)*(2*n + 1)) * Real.sin ((2*n + 1)*x))
: (∀ N > 0, ∀ x : ℝ, f N x ≤ putnam_2020_a6_solution) ∧
∀ M : ℝ, (∀ N > 0, ∀ x : ℝ, f N x ≤ M) → M ≥ putnam_2020_a6_solution :=
sorry

abbrev putnam_2020_b1_solution : ℕ := sorry
-- 1990
theorem putnam_2020_b1
(d : ℕ → ℕ := fun n : ℕ => ∑ i : Fin (Nat.digits 2 n).length, (Nat.digits 2 n)[i]!)
(S : ℤ := ∑ k : Icc 1 2020, ((-1)^(d k))*(k : ℕ)^3)
: S % 2020 = putnam_2020_b1_solution :=
sorry

open Set
noncomputable abbrev putnam_2020_b4_solution : ℝ := sorry
-- 1 / 4040
theorem putnam_2020_b4
(V : ℕ → Set (ℕ → ℤ) := fun n ↦ ({s : ℕ → ℤ | s 0 = 0 ∧ (∀ j ≥ 2 * n, s j = 0) ∧ (∀ j ∈ Icc 1 (2 * n), |s j - s (j - 1)| = 1)}))
(q : ℕ → (ℕ → ℤ) → ℝ := fun n s ↦ 1 + ∑ j in Finset.Icc 1 (2 * n - 1), 3 ^ (s j))
(M : ℕ → ℝ := fun n ↦ (∑' v : V n, 1 / (q n v)) / (V n).ncard)
: (M 2020 = putnam_2020_b4_solution) :=
sorry

theorem putnam_2020_b5
(z : Fin 4 → ℂ)
(hzle1 : ∀ n, ‖z n‖ < 1)
(hzne1 : ∀ n, z n ≠ 1)
: 3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0:=
sorry

theorem putnam_2020_b6
(n : ℕ)
(npos : n > 0)
: ∑ k : Fin n, ((-1) ^ Int.floor ((k.1 + 1) * (Real.sqrt 2 - 1)) : ℝ) ≥ 0 :=
sorry
