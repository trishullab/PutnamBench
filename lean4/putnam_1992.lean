import Mathlib
open BigOperators

theorem putnam_1992_a1
(f : ℤ → ℤ)
: ((f = fun n ↦ 1 - n) ↔ (∀ n : ℤ, f (f n) = n) ∧ (∀ n : ℤ, f (f (n + 2) + 2) = n) ∧ (f 0 = 1)) :=
sorry

abbrev putnam_1992_a2_solution : ℝ := sorry
-- 1992
theorem putnam_1992_a2
(C : ℝ → ℝ := fun α ↦ taylorCoeffWithin (fun x ↦ (1 + x) ^ α) 1992 Set.univ 0)
: (∫ y in (0)..1, C (-y - 1) * ∑ k in Finset.Icc (1 : ℕ) 1992, 1 / (y + k) = putnam_1992_a2_solution) :=
sorry

open Nat

abbrev putnam_1992_a3_solution : ℕ → Set (ℕ × ℕ × ℕ) := sorry
-- fun m ↦ ite (Odd m) ∅ {(m + 1, 2 ^ (m / 2), 2 ^ (m / 2))}
theorem putnam_1992_a3
(m : ℕ)
(mpos : m > 0)
(S : Set (ℕ × ℕ × ℕ))
(hS : ∀ n x y : ℕ, (n, x, y) ∈ S ↔ n > 0 ∧ x > 0 ∧ y > 0 ∧ Coprime n m ∧ (x ^ 2 + y ^ 2) ^ m = (x * y) ^ n)
: (S = putnam_1992_a3_solution m) :=
sorry

open Function

abbrev putnam_1992_a4_solution : ℕ → ℝ := sorry
-- fun k ↦ ite (Even k) ((-1) ^ (k / 2) * factorial k) 0
theorem putnam_1992_a4
(f : ℝ → ℝ)
(hfdiff : ContDiff ℝ ⊤ f)
(hf : ∀ n : ℕ, n > 0 → f (1 / n) = n ^ 2 / (n ^ 2 + 1))
: (∀ k : ℕ, k > 0 → iteratedDeriv k f 0 = putnam_1992_a4_solution k) :=
sorry

theorem putnam_1992_a5
(a : ℕ → ℕ := fun n ↦ ite (Even {i | (digits 2 n).get i = 1}.ncard) 0 1)
: (¬∃ k > 0, ∃ m > 0, ∀ j ≤ m - 1, a (k + j) = a (k + m + j) ∧ a (k + m + j) = a (k + 2 * m + j)) :=
sorry

abbrev putnam_1992_b1_solution : ℕ → ℤ := sorry
-- fun n ↦ 2 * n - 3
theorem putnam_1992_b1
(n : ℕ)
(nge2 : n ≥ 2)
(A : Finset ℝ → Set ℝ := fun S ↦ {x | ∃ a ∈ S, ∃ b ∈ S, a ≠ b ∧ (a + b) / 2 = x})
(min : ℤ)
(hmineq : ∃ S : Finset ℝ, S.card = n ∧ min = (A S).ncard)
(hminlb : ∀ S : Finset ℝ, S.card = n → min ≤ (A S).ncard)
: (min = putnam_1992_b1_solution n) :=
sorry

open Polynomial

theorem putnam_1992_b2
(Q : ℕ → ℕ → ℕ := fun n k ↦ coeff ((1 + X + X ^ 2 + X ^ 3) ^ n) k)
: (∀ n k : ℕ, Q n k = ∑ j : Finset.range (k + 1), choose n j * choose n (k - 2 * j)) :=
sorry

abbrev putnam_1992_b4_solution : ℕ := sorry
-- 3984
theorem putnam_1992_b4
(valid : Polynomial ℝ → Prop := fun p ↦ p ≠ 0 ∧ p.degree < 1992 ∧ IsCoprime p (X ^ 3 - X))
(pair : Polynomial ℝ → Polynomial ℝ → Prop := fun p f ↦ ∃ g : Polynomial ℝ, iteratedDeriv 1992 (fun x ↦ p.eval x / (x ^ 3 - x)) = fun x ↦ f.eval x / g.eval x)
(min : ℕ)
(hmineq : ∃ p f : Polynomial ℝ, (valid p ∧ pair p f) ∧ min = f.degree)
(hminlb : ∀ p f : Polynomial ℝ, (valid p ∧ pair p f) → min ≤ f.degree)
: (min = putnam_1992_b4_solution) :=
sorry

abbrev putnam_1992_b5_solution : Prop := sorry
-- False
theorem putnam_1992_b5
(D : ℕ → ℚ := fun n ↦ Matrix.det (fun i j : Fin (n - 1) ↦ ite (i = j) (i + 3) 1))
: ((Bornology.IsBounded {x | ∃ n ≥ 2, D n / factorial n = x}) ↔ putnam_1992_b5_solution) :=
sorry

theorem putnam_1992_b6
(n : ℕ)
(npos : n > 0)
(M : Set (Matrix (Fin n) (Fin n) ℝ))
(h1 : 1 ∈ M)
(h2 : ∀ A ∈ M, ∀ B ∈ M, Xor' (A * B ∈ M) (-A * B ∈ M))
(h3 : ∀ A ∈ M, ∀ B ∈ M, (A * B = B * A) ∨ (A * B = -B * A))
(h4 : ∀ A ∈ M, A ≠ 1 → ∃ B ∈ M, A * B = -B * A)
: (M.encard ≤ n ^ 2) :=
sorry
