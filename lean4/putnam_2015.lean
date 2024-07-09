import Mathlib
open BigOperators

theorem putnam_2015_a1
(hyperbola : Set (Fin 2 → ℝ) := {p : Fin 2 → ℝ | p 1 = 1 / p 0 ∧ p 0 > 0})
(A B : Fin 2 → ℝ)
(P : Fin 2 → ℝ)
(PPline : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (ℝ → ℝ))
(hAB : A ∈ hyperbola ∧ B ∈ hyperbola ∧ A 0 < B 0)
(hP : P ∈ hyperbola ∧ A 0 < P 0 ∧ P 0 < B 0 ∧ (∀ P' : Fin 2 → ℝ, (P' ∈ hyperbola ∧ A 0 < P' 0 ∧ P' 0 < B 0) → MeasureTheory.volume (convexHull ℝ {A, P', B}) ≤ MeasureTheory.volume (convexHull ℝ {A, P, B})))
(hPPline : ∀ P1 P2 : Fin 2 → ℝ, P1 0 ≠ P2 0 → PPline P1 P2 = (fun x : ℝ => ((P2 1 - P1 1) / (P2 0 - P1 0)) * (x - P1 0) + P1 1))
: ∫ x in Set.Ioo (A 0) (P 0), (PPline A P) x - 1 / x = ∫ x in Set.Ioo (P 0) (B 0), (PPline P B) x - 1 / x :=
sorry

-- Note: this problem admits several possible correct solutions; this is the one shown on the solutions document
abbrev putnam_2015_a2_solution : ℕ := sorry
-- 181
theorem putnam_2015_a2
(a : ℕ → ℤ)
(abase : a 0 = 1 ∧ a 1 = 2)
(arec : ∀ n ≥ 2, a n = 4 * a (n - 1) - a (n - 2))
: Odd putnam_2015_a2_solution ∧ putnam_2015_a2_solution.Prime ∧ ((putnam_2015_a2_solution : ℤ) ∣ a 2015) :=
sorry

abbrev putnam_2015_a3_solution : ℂ := sorry
-- 13725
theorem putnam_2015_a3
: Complex.log (∏ a : Fin 2015, ∏ b : Fin 2015, (1 + Complex.exp (2 * Real.pi * Complex.I * (a.1 + 1) * (b.1 + 1) / 2015))) / Complex.log 2 = putnam_2015_a3_solution :=
sorry

noncomputable abbrev putnam_2015_a4_solution : ℝ := sorry
-- 4 / 7
theorem putnam_2015_a4
(S : ℝ → Set ℕ := fun x ↦ {n : ℕ | n > 0 ∧ Even ⌊n * x⌋})
(f : ℝ → ℝ := fun x ↦ ∑' n : S x, 1 / 2 ^ (n : ℕ))
(p : ℝ → Prop := fun l ↦ ∀ x ∈ Set.Ico 0 1, f x ≥ l)
(L : ℝ)
(hpL : p L)
(hLub : ∀ l : ℝ, p l → l ≤ L)
: (L = putnam_2015_a4_solution) :=
sorry

theorem putnam_2015_a5
(q : ℕ)
(Nq : ℕ)
(qodd : Odd q)
(qpos : q > 0)
(hNq : Nq = {a : ℕ | 0 < a ∧ a < (q : ℝ) / 4 ∧ Nat.gcd a q = 1}.encard)
: Odd Nq ↔ ∃ p k : ℕ, q = p ^ k ∧ k > 0 ∧ p.Prime ∧ (p % 8 = 5 ∨ p % 8 = 7) :=
sorry

theorem putnam_2015_a6
(n : ℕ)
(A B M : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hmul : A * M = M * B)
(hpoly : Matrix.charpoly A = Matrix.charpoly B)
: ∀ X : Matrix (Fin n) (Fin n) ℝ, (A - M * X).det = (B - X * M).det :=
sorry

theorem putnam_2015_b1
(f : ℝ → ℝ)
(nzeros : (ℝ → ℝ) → ℕ → Prop)
(fdiff : ContDiff ℝ 2 f ∧ Differentiable ℝ (iteratedDeriv 2 f))
(hnzeros : ∀ f' : ℝ → ℝ, ∀ n : ℕ, nzeros f' n = ({x : ℝ | f' x = 0}.encard ≥ n))
(fzeros : nzeros f 5)
: nzeros (f + 6 * deriv f + 12 * iteratedDeriv 2 f + 8 * iteratedDeriv 3 f) 2 :=
sorry

abbrev putnam_2015_b2_solution : Prop := sorry
-- True
theorem putnam_2015_b2
(sets : ℕ → Set ℕ)
(Smin3 : Set ℕ → (Fin 3 → ℕ))
(sums : ℕ → ℕ)
(hsets0 : sets 0 = Set.Ici 1)
(hmin3 : ∀ S : Set ℕ, S.encard ≥ 3 → ((Smin3 S) 0 = sInf S ∧ (Smin3 S) 1 = sInf (S \ {(Smin3 S) 0}) ∧ (Smin3 S) 2 = sInf (S \ {(Smin3 S) 0, (Smin3 S) 1})))
(hsums : ∀ n : ℕ, sums n = (Smin3 (sets n)) 0 + (Smin3 (sets n)) 1 + (Smin3 (sets n)) 2)
(hsetsn : ∀ n : ℕ, sets (n + 1) = sets n \ {(Smin3 (sets n)) 0, (Smin3 (sets n)) 1, (Smin3 (sets n)) 2, sums n})
: (∃ n : ℕ, List.IsPrefix [5, 1, 0, 2] (Nat.digits 10 (sums n))) ↔ putnam_2015_b2_solution :=
sorry

abbrev putnam_2015_b3_solution : Set (Matrix (Fin 2) (Fin 2) ℝ) := sorry
-- {A : Matrix (Fin 2) (Fin 2) ℝ | (∃ α : ℝ, ∀ i j : Fin 2, A i j = α * 1) ∨ (∃ β : ℝ, A 0 0 = β * -3 ∧ A 0 1 = β * -1 ∧ A 1 0 = β * 1 ∧ A 1 1 = β * 3)}
theorem putnam_2015_b3
(S : Set (Matrix (Fin 2) (Fin 2) ℝ))
(M : Matrix (Fin 2) (Fin 2) ℝ)
(MinS : Prop)
(hS : S = {M' : Matrix (Fin 2) (Fin 2) ℝ | (M' 0 1 - M' 0 0 = M' 1 0 - M' 0 1) ∧ (M' 0 1 - M' 0 0 = M' 1 1 - M' 1 0)})
(hMinS : MinS = (M ∈ S ∧ (∃ k > 1, M ^ k ∈ S)))
: MinS ↔ M ∈ putnam_2015_b3_solution :=
sorry

abbrev putnam_2015_b4_solution : ℤ × ℕ := sorry
-- (17, 21)
theorem putnam_2015_b4
(quotientof : ℚ → (ℤ × ℕ))
(hquotientof : ∀ q : ℚ, quotientof q = (q.num, q.den))
: quotientof (∑' t : (Fin 3 → ℤ), if (∀ n : Fin 3, t n > 0) ∧ t 0 < t 1 + t 2 ∧ t 1 < t 2 + t 0 ∧ t 2 < t 0 + t 1
then 2^(t 0)/(3^(t 1)*5^(t 2)) else 0) = putnam_2015_b4_solution :=
sorry

open Function

abbrev putnam_2015_b5_solution : ℕ := sorry
-- 4
theorem putnam_2015_b5
(P : ℕ → ℕ := fun n ↦ {pi : Finset.Icc 1 n → Finset.Icc 1 n | Bijective pi ∧ ∀ i j : Finset.Icc 1 n, Nat.dist i j = 1 → Nat.dist (pi i) (pi j) ≤ 2}.ncard)
: (∀ n : ℕ, n ≥ 2 →  (P (n + 5) : ℤ) - (P (n + 4) : ℤ) - (P (n + 3) : ℤ) + (P n : ℤ) = putnam_2015_b5_solution) :=
sorry

noncomputable abbrev putnam_2015_b6_solution : ℝ := sorry
-- Real.pi ^ 2 / 16
theorem putnam_2015_b6
(A : ℕ → ℕ)
(hA : ∀ k > 0, A k = {j : ℕ | Odd j ∧ j ∣ k ∧ j < Real.sqrt (2 * k)}.encard)
: ∑' k : Set.Ici 1, (-1 : ℝ) ^ ((k : ℝ) - 1) * (A k / (k : ℝ)) = putnam_2015_b6_solution :=
sorry
