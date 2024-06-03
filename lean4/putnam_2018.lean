import Mathlib
open BigOperators


abbrev putnam_2018_a1_solution : Set (ℤ × ℤ) := sorry
-- {⟨673, 1358114⟩, ⟨674, 340033⟩, ⟨1009, 2018⟩, ⟨2018, 1009⟩, ⟨340033, 674⟩, ⟨1358114, 673⟩}
theorem putnam_2018_a1 : ∀ a b : ℤ, (a > 0 ∧ b > 0 ∧ ((1: ℚ) / a + (1: ℚ) / b = (3: ℚ) / 2018)) ↔ (⟨a, b⟩ ∈ putnam_2018_a1_solution) :=
sorry

noncomputable abbrev putnam_2018_a3_solution : ℝ := sorry
-- 480/49
theorem putnam_2018_a3
(P : Set (Fin 10 → ℝ))
(f : (Fin 10 → ℝ) → ℝ → ℝ := fun x => fun k => ∑ i : Fin 10, Real.cos (k * (x i)))
(hP : ∀ x ∈ P, f x 1 = 0)
: ∀ y ∈ P, f y 3 ≤ putnam_2018_a3_solution ∧ ∃ x ∈ P, f x 3 = putnam_2018_a3_solution :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Set.Icc 1 n → ℕ)
theorem putnam_2018_a4
(m n : ℕ)
(a : ℕ → ℤ)
(G : Type*) [Group G]
(g h : G)
(mnpos : m > 0 ∧ n > 0)
(mngcd : Nat.gcd m n = 1)
(ha : ∀ k : Set.Icc 1 n, a k = Int.floor (m * k / (n : ℝ)) - Int.floor (m * ((k : ℤ) - 1) / (n : ℝ)))
(ghprod : ((List.Ico 1 (n + 1)).map (fun k : ℕ => g * h ^ (a k))).prod = 1)
: g * h = h * g :=
sorry

theorem putnam_2018_a5
(f : ℝ → ℝ)
(h0 : f 0 = 0)
(h1 : f 1 = 1)
(hpos : ∀ x : ℝ, f x ≥ 0)
(hf : ContDiff ℝ ⊤ f)
: ∃ n > 0, ∃ x : ℝ, iteratedDeriv n f x < 0 :=
sorry

abbrev putnam_2018_b1_solution : Set (Vector ℤ 2) := sorry
-- {v : Vector ℤ 2 | ∃ b : ℤ, 0 ≤ b ∧ b ≤ 100 ∧ Even b ∧ v.toList = [1, b]}
theorem putnam_2018_b1
(P : Finset (Vector ℤ 2))
(v : Vector ℤ 2)
(vinP : Prop)
(Pvdiff : Finset (Vector ℤ 2))
(Pvpart : Prop)
(hP : P = {v' : Vector ℤ 2 | 0 ≤ v'[0] ∧ v'[0] ≤ 2 ∧ 0 ≤ v'[1] ∧ v'[1] ≤ 100})
(hvinP : vinP = (v ∈ P))
(hPvdiff : Pvdiff = P \ ({v} : Finset (Vector ℤ 2)))
(hPvpart : Pvpart = (∃ Q R : Finset (Vector ℤ 2), (Q ∪ R = Pvdiff) ∧ (Q ∩ R = ∅) ∧ (Q.card = R.card) ∧ (∑ q in Q, q[0] = ∑ r in R, r[0]) ∧ (∑ q in Q, q[1] = ∑ r in R, r[1])))
: (vinP ∧ Pvpart) ↔ v ∈ putnam_2018_b1_solution :=
sorry

theorem putnam_2018_b2
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℂ → ℂ)
(hf : ∀ z : ℂ, f n z = ∑ i in Finset.range n, (n - i) * z^i)
: ∀ z : ℂ, ‖z‖ ≤ 1 → f n z ≠ 0 :=
sorry

abbrev putnam_2018_b3_solution : Set ℕ := sorry
-- {2^2, 2^4, 2^8, 2^16}
theorem putnam_2018_b3
(n : ℕ)
(hn : n > 0)
: ((n < 10^100 ∧ ((n : ℤ) ∣ (2^n : ℤ) ∧ (n - 1 : ℤ) ∣ (2^n - 1 : ℤ) ∧ (n - 2 : ℤ) ∣ (2^n - 2 : ℤ))) ↔ n ∈ putnam_2018_b3_solution) :=
sorry

theorem putnam_2018_b4
(a : ℝ)
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hx12 : x 1 = a ∧ x 2 = a)
(hxn : ∀ n ≥ 2, x (n + 1) = 2 * (x n) * (x (n - 1)) - x (n - 2))
: (∃ n, x n = 0) → (∃ c, c > 0 ∧ Function.Periodic x c) :=
sorry

theorem putnam_2018_b6
(S : Finset (Fin 2018 → ℤ))
(hS : S = {s : Fin 2018 → ℤ | (∀ i : Fin 2018, s i ∈ ({1, 2, 3, 4, 5, 6, 10} : Set ℤ)) ∧ (∑ i : Fin 2018, s i) = 3860})
: S.card ≤ 2 ^ 3860 * ((2018 : ℝ) / 2048) ^ 2018 :=
sorry
