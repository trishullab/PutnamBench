import Mathlib
open BigOperators


theorem putnam_1978_a1
(S : Set ℤ := {k | ∃ j : ℤ, 0 ≤ j ∧ j ≤ 33 ∧ k = 3 * j + 1})
(T : Set ℤ)
(hT : T ⊆ S ∧ T.ncard = 20)
: (∃ m ∈ T, ∃ n ∈ T, m ≠ n ∧ m + n = 104) :=
sorry

theorem putnam_1978_a2
(n : ℕ)
(npos : n > 0)
(a b : ℝ)
(hab : a ≠ b)
(c : Fin n → ℝ)
(A : Matrix (Fin n) (Fin n) ℝ := fun i j ↦ ite (i < j) a (ite (i > j) b (c i)))
(p : ℝ → ℝ := fun x ↦ ∏ i : Fin n, (c i - x))
: (A.det = ((b * p a - a * p b) / (b - a))) :=
sorry

open Set

abbrev putnam_1978_a3_solution : ℕ := sorry
-- 2
theorem putnam_1978_a3
(p : Polynomial ℝ := 2 * (X ^ 6 + 1) + 4 * (X ^ 5 + X) + 3 * (X ^ 4 + X ^ 2) + 5 * X ^ 3)
(I : ℕ → ℝ := fun k ↦ ∫ x in Ioi 0, x ^ k / p.eval x)
: (putnam_1978_a3_solution ∈ Ioo 0 5 ∧ ∀ k ∈ Ioo 0 5, I putnam_1978_a3_solution ≤ I k) :=
sorry

-- Note: This formalization uses "Type" instead of "Type*" for an algebraic structure (a set with a bypass operation). Also, the original problem asks for a witness to the existentially quantified statement in the goal.
theorem putnam_1978_a4
(bypass : (S : Type) → [inst : Mul S] → Prop := fun S [Mul S] ↦ ∀ a b c d : S, (a * b) * (c * d) = a * d)
: ((∀ (S : Type) (_ : Mul S), bypass S → ∀ a b c : S, a * b = c → (c * c = c ∧ ∀ d : S, a * d = c * d))
  ∧ (∃ (S : Type) (_ : Mul S) (_ : Fintype S), bypass S ∧ (∀ a : S, a * a = a) ∧ (∃ a b : S, a * b = a ∧ a ≠ b) ∧ (∃ a b : S, a * b ≠ a))) :=
sorry

open Real

theorem putnam_1978_a5
(n : ℕ)
(npos : n > 0)
(a : Fin n → ℝ)
(ha : ∀ i : Fin n, a i ∈ Ioo 0 Real.pi)
(μ : ℝ := ∑ i : Fin n, a i / n)
: (∏ i : Fin n, sin (a i) / (a i) ≤ (sin μ / μ) ^ n) :=
sorry

theorem putnam_1978_a6
(S : Finset (Fin 2 → ℝ))
(n : ℕ := S.card)
(npos : n > 0)
: ({pair : Set (Fin 2 → ℝ) | ∃ P ∈ S, ∃ Q ∈ S, pair = {P, Q} ∧ Euclidean.dist P Q = 1}.ncard < 2 * (n : ℝ) ^ ((3 : ℝ) / 2)) :=
sorry

abbrev putnam_1978_b2_solution : ℚ := sorry
-- 7 / 4
theorem putnam_1978_b2
: (∑' i : ℕ+, ∑' j : ℕ+, (1 : ℚ) / (i ^ 2 * j + 2 * i * j + i * j ^ 2) = putnam_1978_b2_solution) :=
sorry

open Filter Topology Polynomial

theorem putnam_1978_b3
(P : ℕ+ → Polynomial ℝ)
(hP1 : P 1 = 1 + X)
(hP2 : P 2 = 1 + 2 * X)
(hPodd : ∀ n, P (2 * n + 1) = P (2 * n) + C ((n : ℝ) + 1) * X * P (2 * n - 1))
(hPeven : ∀ n, P (2 * n + 2) = P (2 * n + 1) + C ((n : ℝ) + 1) * X * P (2 * n))
(a : ℕ+ → ℝ)
(haroot : ∀ n, (P n).eval (a n) = 0)
(haub : ∀ n, ∀ x, (P n).eval x = 0 → x ≤ a n)
: (StrictMono a ∧ Tendsto a atTop (𝓝 0)) :=
sorry

theorem putnam_1978_b4
: (∀ N : ℝ, ∃ a b c d : ℤ, a > N ∧ b > N ∧ c > N ∧ d > N ∧ a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = a * b * c + a * b * d + a * c * d + b * c * d) :=
sorry

open Polynomial Set

noncomputable abbrev putnam_1978_b5_solution : Polynomial ℝ := sorry
-- 4 * X ^ 4 - 4 * X ^ 2 + 1
theorem putnam_1978_b5
(S : Set (Polynomial ℝ) := {p : Polynomial ℝ | p.degree = 4 ∧ ∀ x ∈ Icc (-1) 1, p.eval x ∈ Icc 0 1})
: (putnam_1978_b5_solution ∈ S ∧ (∀ p ∈ S, p.coeff 4 ≤ putnam_1978_b5_solution.coeff 4)) :=
sorry

theorem putnam_1978_b6
(a : ℕ → ℕ → ℝ)
(ha : ∀ i j, a i j ∈ Icc 0 1)
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j / i) ^ 2 ≤ 2 * m * ∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j) :=
sorry
