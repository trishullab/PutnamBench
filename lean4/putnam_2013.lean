import Mathlib
open BigOperators

open Function Set

theorem putnam_2013_a2
(S : Set ℕ := {n : ℕ | n > 0 ∧ ¬∃ m : ℤ, m ^ 2 = n})
(P : ℕ → List ℤ → Prop := fun n : ℕ => fun a : List ℤ => a.length > 0 ∧ n < a[0]! ∧
(∃ m : ℤ, m ^ 2 = n * a.prod) ∧ (∀ i : Fin (a.length - 1), a[i] < a[i+(1:ℕ)]))
(T : ℕ → Set ℤ := fun n : ℕ => {m : ℤ | ∃ a : List ℤ, P n a ∧ a[a.length - 1]! = m})
(f : ℕ → ℤ)
(hf : ∀ n ∈ S, ((∃ r ∈ T n, f n = r) ∧ ∀ r ∈ T n, f n ≤ r))
: InjOn f S :=
sorry

theorem putnam_2013_a4
(n : ℕ)
(circle : Fin n → Fin 2)
(Z N : Fin n × Fin (n + 1) → ℕ)
(k : ℕ)
(ws : Fin k → Fin n × Fin (n + 1))
(Zsum Nsum : ℕ)
(npos : n ≥ 1)
(hZ : ∀ w : Fin n × Fin (n + 1), Z w = ∑ l : {x : Fin n | x < w.2}, if (circle (w.1 + l) = 0) then 1 else 0)
(hN : ∀ w : Fin n × Fin (n + 1), N w = ∑ l : {x : Fin n | x < w.2}, if (circle (w.1 + l) = 1) then 1 else 0)
(Zle1 : ∀ w w' : Fin n × Fin (n + 1), w.2 = w'.2 → |(Z w : ℤ) - Z w'| ≤ 1)
(kpos : k ≥ 1)
(hZsum : Zsum = ((1 : ℝ) / k) * ∑ j : Fin k, Z (ws j))
(hNsum : Nsum = ((1 : ℝ) / k) * ∑ j : Fin k, N (ws j))
: ∃ w : Fin n × Fin (n + 1), Z w = Zsum ∧ N w = Nsum :=
sorry

-- Note: uses (Fin m → Fin m → Fin m → ℝ) instead of ensuring inputs are strictly increasing
theorem putnam_2013_a5
(m : ℕ)
(area2 : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (Fin 2 → ℝ) → ℝ)
(area3 : (Fin 3 → ℝ) → (Fin 3 → ℝ) → (Fin 3 → ℝ) → ℝ)
(areadef2 : (Fin m → Fin m → Fin m → ℝ) → Prop)
(areadef3 : (Fin m → Fin m → Fin m → ℝ) → Prop)
(mge3 : m ≥ 3)
(harea2 : ∀ a b c : Fin 2 → ℝ, area2 a b c = (MeasureTheory.volume (convexHull ℝ {a, b, c})).toReal)
(harea3 : ∀ a b c : Fin 3 → ℝ, area3 a b c = (MeasureTheory.volume (convexHull ℝ {a, b, c})).toReal)
(hareadef2 : ∀ a : Fin m → Fin m → Fin m → ℝ, areadef2 a = ∀ A : Fin m → (Fin 2 → ℝ), (∑ i : Fin m, ∑ j : Fin m, ∑ k : Fin m, if (i < j ∧ j < k) then (a i j k * area2 (A i) (A j) (A k)) else 0) ≥ 0)
(hareadef3 : ∀ a : Fin m → Fin m → Fin m → ℝ, areadef3 a = ∀ A : Fin m → (Fin 3 → ℝ), (∑ i : Fin m, ∑ j : Fin m, ∑ k : Fin m, if (i < j ∧ j < k) then (a i j k * area3 (A i) (A j) (A k)) else 0) ≥ 0)
: ∀ a : Fin m → Fin m → Fin m → ℝ, areadef2 a → areadef3 a :=
sorry


theorem putnam_2013_a6
(w : ℤ → ℤ → ℤ)
(A : Finset (ℤ × ℤ) → ℤ)
(hwn1 : w (-2) (-2) = -1 ∧ w 2 (-2) = -1 ∧ w (-2) 2 = -1 ∧ w 2 2 = -1)
(hwn2 : w (-1) (-2) = -2 ∧ w 1 (-2) = -2 ∧ w (-2) (-1) = -2 ∧ w 2 (-1) = -2 ∧ w (-2) 1 = -2 ∧ w 2 1 = -2 ∧ w (-1) 2 = -2 ∧ w 1 2 = -2)
(hw2 : w 0 (-2) = 2 ∧ w (-2) 0 = 2 ∧ w 2 0 = 2 ∧ w 0 2 = 2)
(hw4 : w (-1) (-1) = 4 ∧ w 1 (-1) = 4 ∧ w (-1) 1 = 4 ∧ w 1 1 = 4)
(hwn4 : w 0 (-1) = -4 ∧ w (-1) 0 = -4 ∧ w 1 0 = -4 ∧ w 0 1 = -4)
(hw12 : w 0 0 = 12)
(hw0 : ∀ a b : ℤ, (|a| > 2 ∨ |b| > 2) → w a b = 0)
(hA : ∀ S : Finset (ℤ × ℤ), A S = ∑ s in S, ∑ s' in S, w (s - s').1 (s - s').2)
: ∀ S : Finset (ℤ × ℤ), Nonempty S → A S > 0 :=
sorry

abbrev putnam_2013_b1_solution : ℤ := sorry
-- -1
theorem putnam_2013_b1
(c : ℕ → ℤ)
(hc1 : c 1 = 1)
(hceven : ∀ n : ℕ, n > 0 → c (2 * n) = c n)
(hcodd : ∀ n : ℕ, n > 0 → c (2 * n + 1) = (-1) ^ n * c n)
: (∑ n : Set.Icc 1 2013, c n.1 * c (n.1 + 2)) = putnam_2013_b1_solution :=
sorry

abbrev putnam_2013_b2_solution : ℝ := sorry
-- 3
theorem putnam_2013_b2
(CN : ℕ → Set (ℝ → ℝ) := fun N : ℕ => {f : ℝ → ℝ | (∀ x : ℝ, f x ≥ 0) ∧
∃ a : List ℝ, a.length = N + 1 ∧ (∀ n : Fin (N + 1), 3 ∣ (n : ℕ) → a[n]! = 0) ∧
∀ x : ℝ, f x = 1 + ∑ n in Finset.Icc 1 N, a[(n : ℕ)]! * Real.cos (2*Real.pi*n*x)})
(C : Set (ℝ → ℝ) := ⋃ N ∈ Ici 1, CN N)
: (∀ f ∈ C, f 0 ≤ putnam_2013_b2_solution) ∧ ∃ f ∈ C, f 0 = putnam_2013_b2_solution :=
sorry

abbrev putnam_2013_b3_solution : Prop := sorry
-- True
theorem putnam_2013_b3
(n : ℕ)
(P : Finset (Finset (Fin n)))
(hP : ∀ S ∈ P, ∀ S' ∈ P, S ∪ S' ∈ P ∧ S ∩ S' ∈ P)
(hP' : ∀ S ∈ P, Finset.card S ≠ 0 → ∃ T ∈ P, T ⊂ S ∧ Finset.card T + 1 = Finset.card S)
(f : Finset (Fin n) → ℝ)
(hf : f ⊥ = 0)
(hf' : ∀ S ∈ P, ∀ S' ∈ P, f (S ∪ S') = f S + f S' - f (S ∩ S'))
: (∃ r : Fin n → ℝ, ∀ S ∈ P, f S = ∑ i in S, r i) ↔ putnam_2013_b3_solution :=
sorry

theorem putnam_2013_b4
(μ : (Set.Icc (0 : ℝ) 1 → ℝ) → ℝ)
(Var : (Set.Icc (0 : ℝ) 1 → ℝ) → ℝ)
(M : (Set.Icc (0 : ℝ) 1 → ℝ) → ℝ)
(hμ : ∀ f : Set.Icc (0 : ℝ) 1 → ℝ, μ f = ∫ x : Set.Icc (0 : ℝ) 1, f x)
(hVar : ∀ f : Set.Icc (0 : ℝ) 1 → ℝ, Var f = ∫ x : Set.Icc (0 : ℝ) 1, (f x - μ f) ^ 2)
(hM : ∀ f : Set.Icc (0 : ℝ) 1 → ℝ, (∃ x : Set.Icc (0 : ℝ) 1, |f x| = M f) ∧ (∀ x : Set.Icc (0 : ℝ) 1, |f x| ≤ M f))
: ∀ f g : Set.Icc (0 : ℝ) 1 → ℝ, (Continuous f ∧ Continuous g) → Var (f * g) ≤ 2 * Var f * (M g) ^ 2 + 2 * Var g * (M f) ^ 2 :=
sorry


theorem putnam_2013_b5
(n : ℕ)
(k : Set.Icc 1 n)
(fiter : (Set.Icc 1 n → Set.Icc 1 n) → Prop)
(npos : n ≥ 1)
(hfiter : ∀ f : Set.Icc 1 n → Set.Icc 1 n, fiter f = ∀ x : Set.Icc 1 n, ∃ j : ℕ, f^[j] x ≤ k)
: {f : Set.Icc 1 n → Set.Icc 1 n | fiter f}.encard = k * n ^ (n - 1) := sorry


