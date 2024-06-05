import Mathlib
open BigOperators
open Topology Filter


theorem putnam_2014_a1
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = (1 - x + x ^ 2) * Real.exp x)
(hfdiff : ContDiff ℝ ⊤ f)
(c : ℕ → ℝ)
(hc : ∀ k : ℕ, c k = taylorCoeffWithin f k Set.univ 0)
: ∀ k : ℕ, c k ≠ 0 → ∃ q : ℚ, c k = q ∧ (q.num = 1 ∨ Prime q.num.natAbs) :=
sorry

open Nat

abbrev putnam_2014_a2_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => (-1) ^ (n - 1) / ((n - 1)! * (n)!))
theorem putnam_2014_a2
(n : ℕ)
(A : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hA : ∀ i j : Fin n, A i j = 1 / min (i.1 + 1 : ℚ) (j.1 + 1))
: A.det = putnam_2014_a2_solution n :=
sorry

noncomputable abbrev putnam_2014_a3_solution : ℝ := sorry
-- 3 / 7
theorem putnam_2014_a3
(a : ℕ → ℝ)
(a0 : a 0 = 5 / 2)
(ak : ∀ k ≥ 1, a k = (a (k - 1)) ^ 2 - 2)
: Tendsto (fun n : ℕ => ∏ k in Finset.range n, (1 - 1 / a k)) atTop (𝓝 putnam_2014_a3_solution) :=
sorry

theorem putnam_2014_a5
(P : ℕ → Polynomial ℂ)
(hP : ∀ n, P n = ∑ i in Finset.Icc 1 n, i * Polynomial.X ^ (i - 1))
: ∀ (j k : ℕ), (j > 0 ∧ k > 0) → j ≠ k → IsCoprime (P j) (P k) :=
sorry

abbrev putnam_2014_a6_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => n ^ n)
theorem putnam_2014_a6
(n : ℕ)
(kex : ℕ → Prop)
(npos : n > 0)
(hkex : ∀ k ≥ 1, kex k = ∃ M N : Fin k → Matrix (Fin n) (Fin n) ℝ, ∀ i j : Fin k, ((∃ p : Fin n, (M i * N j) p p = 0) ↔ i ≠ j))
: (putnam_2014_a6_solution n ≥ 1 ∧ kex (putnam_2014_a6_solution n)) ∧ (∀ k ≥ 1, kex k → k ≤ putnam_2014_a6_solution n) :=
sorry

open Nat

abbrev putnam_2014_b1_solution : Set ℕ := sorry
-- {n : ℕ | n > 0 ∧ ¬∃ a ∈ digits 10 n, a = 0}
theorem putnam_2014_b1
(overexpansion : ℕ → List ℕ → Prop := fun N d ↦ N = ∑ i : Fin d.length, (d.get i) * 10 ^ i.1 ∧ d.getLastI ≠ 0 ∧ ∀ a ∈ d, a ∈ Finset.range 11)
(S : Set ℕ)
(hS : ∀ N : ℕ, N ∈ S ↔ N > 0 ∧ ∃! d : List ℕ, overexpansion N d)
: (S = putnam_2014_b1_solution) :=
sorry

-- uses (ℝ → ℝ) instead of (Set.Icc (1 : ℝ) 3 → ℝ)
noncomputable abbrev putnam_2014_b2_solution : ℝ := sorry
-- Real.log (4 / 3)
theorem putnam_2014_b2
(fbound : (ℝ → ℝ) → Prop := (fun f : ℝ → ℝ => ∀ x : Set.Icc (1 : ℝ) 3, -1 ≤ f x ∧ f x ≤ 1))
(finteq0 : (ℝ → ℝ) → Prop := (fun f : ℝ → ℝ => (∫ x in Set.Ioo 1 3, f x) = 0))
(fint : (ℝ → ℝ) → ℝ := (fun f : ℝ → ℝ => ∫ x in Set.Ioo 1 3, (f x) / x))
: (∃ f : ℝ → ℝ, fbound f ∧ finteq0 f ∧ fint f = putnam_2014_b2_solution) ∧ (∀ f : ℝ → ℝ, (fbound f ∧ finteq0 f) → fint f ≤ putnam_2014_b2_solution) :=
sorry

theorem putnam_2014_b3
(m n : ℕ)
(A : Matrix (Fin m) (Fin n) ℚ)
(mnpos : m > 0 ∧ n > 0)
(Aprime : {p : ℕ | p.Prime ∧ ∃ (i : Fin m) (j : Fin n), |A i j| = p}.encard ≥ m + n)
: A.rank ≥ 2 :=
sorry

theorem putnam_2014_b4
(n : ℕ)
(P: Polynomial ℂ)
(npos : n > 0)
(Px : P.degree = n ∧ ∀ k ∈ Set.Icc 0 n, P.coeff k = 2 ^ (k * (n - k)))
: ∀ r ∈ P.roots, r.im = 0 :=
sorry

open Set Interval
theorem putnam_2014_b6
(f : ℝ → ℝ)
(hlip : ∃ K > 0, ∀ x ∈ Icc 0 1, ∀ y ∈ Icc 0 1, |f x - f y| ≤ K * |x - y|)
(hrat : ∀ r ∈ Icc (0 : ℚ) 1, ∃ a b : ℤ, f r = a + b * r)
: (∃ I : Finset (Interval ℝ), (∀ Ii ∈ I, ∃ m c : ℝ, ∀ x ∈ coeHom Ii, f x = c + m * x) ∧ Icc 0 1 = ⋃ Ii ∈ I, coeHom Ii) :=
sorry
