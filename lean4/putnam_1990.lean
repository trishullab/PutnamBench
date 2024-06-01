import Mathlib
open BigOperators

open Filter Topology
abbrev putnam_1990_a1_solution : (ℕ → ℤ) × (ℕ → ℤ) := sorry
-- (fun n : ℕ => (n)!, fun n : ℕ => 2 ^ n)
theorem putnam_1990_a1
(T : ℕ → ℤ)
(hT012 : T 0 = 2 ∧ T 1 = 3 ∧ T 2 = 6)
(hTn : ∀ n ≥ 3, T n = (n + 4) * T (n - 1) - 4 * n * T (n - 2) + (4 * n - 8) * T (n - 3))
: T = putnam_1990_a1_solution.1 + putnam_1990_a1_solution.2 :=
sorry

abbrev putnam_1990_a2_solution : Prop := sorry
-- True
theorem putnam_1990_a2
(numform : ℝ → Prop)
(hnumform : ∀ x : ℝ, numform x = ∃ n m : ℕ, x = n ^ ((1 : ℝ) / 3) - m ^ ((1 : ℝ) / 3))
: (∃ s : ℕ → ℝ, (∀ i : ℕ, numform (s i)) ∧ Tendsto s atTop (𝓝 (Real.sqrt 2))) ↔ putnam_1990_a2_solution :=
sorry

abbrev putnam_1990_a5_solution : Prop := sorry
-- False
theorem putnam_1990_a5
: (∀ n ≥ 1, ∀ A B : Matrix (Fin n) (Fin n) ℝ, A * B * A * B = 0 → B * A * B * A = 0) ↔ putnam_1990_a5_solution :=
sorry

abbrev putnam_1990_a6_solution : ℕ := sorry
-- 17711
theorem putnam_1990_a6
(STadmiss : (Fin 2 → (Finset (Fin 10))) → Prop)
(hSTadmiss : ∀ ST : Fin 2 → (Finset (Fin 10)), STadmiss ST = ((∀ s ∈ ST 0, (s+1) > (ST 1).card) ∧ (∀ t ∈ ST 1, (t+1) > (ST 0).card)))
: {ST : Fin 2 → (Finset (Fin 10)) | STadmiss ST}.encard = putnam_1990_a6_solution :=
sorry

abbrev putnam_1990_b1_solution : Set (ℝ → ℝ) := sorry
-- {fun x : ℝ => (Real.sqrt 1990) * Real.exp x, fun x : ℝ => -(Real.sqrt 1990) * Real.exp x}
theorem putnam_1990_b1
(f : ℝ → ℝ)
(fint : Prop)
(hfint : fint = ∀ x : ℝ, (f x) ^ 2 = (∫ t in Set.Ioo 0 x, (f t) ^ 2 + (deriv f t) ^ 2) + 1990)
: (ContDiff ℝ 1 f ∧ fint) ↔ f ∈ putnam_1990_b1_solution :=
sorry

theorem putnam_1990_b2
(x z : ℝ)
(P : ℕ → ℝ)
(xlt1 : |x| < 1)
(zgt1 : |z| > 1)
(hP : ∀ j ≥ 1, P j = (∏ i : Fin j, (1 - z * x ^ (i : ℕ))) / (∏ i : Set.Icc 1 j, (z - x ^ (i : ℕ))))
: 1 + (∑' j : Set.Ici 1, (1 + x ^ (j : ℕ)) * P j) = 0 :=
sorry

theorem putnam_1990_b3
(S : Set (Matrix (Fin 2) (Fin 2) ℕ))
(hS : ∀ A ∈ S, ∀ i j : Fin 2, (∃ x : ℕ, A i j = x ^ 2) ∧ A i j ≤ 200)
: (S.encard > 50387) → (∃ A ∈ S, ∃ B ∈ S, A ≠ B ∧ A * B = B * A) :=
sorry

-- Note: uses (ℕ → G) instead of (Fin (2 * n) → G)
abbrev putnam_1990_b4_solution : Prop := sorry
-- True
theorem putnam_1990_b4
: (∀ (G : Type*) (_ : Fintype G) (_ : Group G) (n : ℕ) (a b : G), (n = Fintype.card G ∧ a ≠ b ∧ G = Subgroup.closure {a, b}) → (∃ g : ℕ → G, (∀ x : G, {i : Fin (2 * n) | g i = x}.encard = 2)
  ∧ (∀ i : Fin (2 * n), (g ((i + 1) % (2 * n)) = g i * a) ∨ (g ((i + 1) % (2 * n)) = g i * b))) ↔ putnam_1990_b4_solution) :=
sorry

abbrev putnam_1990_b5_solution : Prop := sorry
-- True
theorem putnam_1990_b5
(anpoly : (ℕ → ℝ) → ℕ → Polynomial ℝ)
(hanpoly : ∀ (a : ℕ → ℝ) (n : ℕ), (anpoly a n).degree = n ∧ (∀ i : Fin (n + 1), (anpoly a n).coeff i = a i))
: (∃ a : ℕ → ℝ, (∀ i : ℕ, a i ≠ 0) ∧ (∀ n ≥ 1, {r : ℝ | (anpoly a n).eval r = 0}.encard = n)) ↔ putnam_1990_b5_solution :=
sorry

