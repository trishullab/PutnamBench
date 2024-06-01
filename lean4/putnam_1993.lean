import Mathlib
open BigOperators


noncomputable abbrev putnam_1993_a1_solution : ℝ := sorry
-- 4 / 9
theorem putnam_1993_a1
: 0 < putnam_1993_a1_solution ∧ putnam_1993_a1_solution < (4 * Real.sqrt 2) / 9 ∧ (∫ x in Set.Ioo 0 ((Real.sqrt 2) / 3), max (putnam_1993_a1_solution - (2 * x - 3 * x ^ 3)) 0) = (∫ x in Set.Ioo 0 ((Real.sqrt 6) / 3), max ((2 * x - 3 * x ^ 3) - putnam_1993_a1_solution) 0) :=
sorry

theorem putnam_1993_a2
(x : ℕ → ℝ)
(xnonzero : ∀ n : ℕ, x n ≠ 0)
(hx : ∀ n ≥ 1, (x n) ^ 2 - x (n - 1) * x (n + 1) = 1)
: ∃ a : ℝ, ∀ n ≥ 1, x (n + 1) = a * x n - x (n - 1) :=
sorry

theorem putnam_1993_a3
(c : ℕ → ℕ → ℕ)
(hc : ∀ n ≥ 1, ∀ m ≥ 1, c n m = {f : Finset (Fin n) → Fin m | ∀ A B : Finset (Fin n), f (A ∩ B) = min (f A) (f B)}.encard)
: ∀ n ≥ 1, ∀ m ≥ 1, c n m = ∑' j : Set.Icc 1 m, (j : ℕ) ^ n :=
sorry

theorem putnam_1993_a4
(x : Fin 19 → ℕ)
(y : Fin 93 → ℕ)
(hx : ∀ i : Fin 19, x i > 0 ∧ x i ≤ 93)
(hy : ∀ j : Fin 93, y j > 0 ∧ y j ≤ 19)
: ∃ (is : Finset (Fin 19)) (js : Finset (Fin 93)), is ≠ ∅ ∧ (∑ i : is, x i) = (∑ j : js, y j) :=
sorry

theorem putnam_1993_a5
: ¬Irrational ((∫ x in Set.Ioo (-100) (-10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (1 / 101) (1 / 11), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (101 / 100) (11 / 10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2))) :=
sorry

theorem putnam_1993_a6
(seq : ℕ → ℕ)
(hseq23 : ∀ n : ℕ, seq n = 2 ∨ seq n = 3)
(hseq2inds : ∀ n : ℕ, seq n = 2 ↔ (∃ N : ℕ, n = ∑ i : Fin N, (seq i + 1)))
: ∃ r : ℝ, ∀ n : ℕ, seq n = 2 ↔ (∃ m : ℕ, n + 1 = 1 + Int.floor (r * m)) :=
sorry

abbrev putnam_1993_b1_solution : ℕ := sorry
-- 3987
theorem putnam_1993_b1
(nallmexk : ℕ → Prop)
(hnallmexk : ∀ n : ℕ, nallmexk n = (n > 0 ∧ ∀ m ∈ Set.Ioo 0 1993, ∃ k : ℤ, (m / 1993 < (k : ℝ) / n) ∧ ((k : ℝ) / n < (m + 1) / 1994)))
: nallmexk putnam_1993_b1_solution ∧ (∀ n : ℕ, nallmexk n → n ≥ putnam_1993_b1_solution) :=
sorry

theorem putnam_1993_b4
(K : ℝ × ℝ → ℝ)
(f g : ℝ → ℝ)
(Kpos : ∀ x y : Set.Icc (0 : ℝ) 1, K (x, y) > 0)
(Kcont : ContinuousOn K {(x, y) : ℝ × ℝ | x ∈ Set.Icc 0 1 ∧ y ∈ Set.Icc 0 1})
(fgpos : ∀ x : Set.Icc (0 : ℝ) 1, f x > 0 ∧ g x > 0)
(fgcont : ContinuousOn f (Set.Icc 0 1) ∧ ContinuousOn g (Set.Icc 0 1))
(fgint : ∀ x : Set.Icc (0 : ℝ) 1, (∫ y in Set.Ioo 0 1, f y * K (x, y)) = g x ∧ (∫ y in Set.Ioo 0 1, g y * K (x, y)) = f x)
: ∀ x : Set.Icc (0 : ℝ) 1, f x = g x :=
sorry

theorem putnam_1993_b5
(pdists : (Fin 4 → (Fin 2 → ℝ)) → Prop)
(hpdists: ∀ p : Fin 4 → (Fin 2 → ℝ), pdists p = ∀ i j : Fin 4, i ≠ j → (Euclidean.dist (p i) (p j) = round (Euclidean.dist (p i) (p j)) ∧ Odd (round (Euclidean.dist (p i) (p j)))))
: ¬∃ p : Fin 4 → (Fin 2 → ℝ), pdists p :=
sorry

-- Note: uses (ℕ → (Fin 3 → ℕ)) instead of (Fin (N + 1) → (Fin 3 → ℕ))
theorem putnam_1993_b6
(S : Fin 3 → ℕ)
(f : Fin 3 → Fin 3 → (Fin 3 → ℕ) → (Fin 3 → ℕ))
(Spos : ∀ i : Fin 3, S i > 0)
(hf : ∀ i j k : Fin 3, (i ≠ j ∧ i ≠ k ∧ j ≠ k) → ∀ S' : Fin 3 → ℕ, if S' i ≤ S' j then ((f i j S') i = 2 * S' i ∧ (f i j S') j = S' j - S' i ∧ (f i j S') k = S' k) else (f i j S' = S'))
: ∃ (Ss : ℕ → (Fin 3 → ℕ)) (N : ℕ), Ss 0 = S ∧ (∃ i : Fin 3, Ss N i = 0) ∧ (∀ n : Fin N, ∃ i j : Fin 3, i ≠ j ∧ f i j (Ss n) = Ss ((n : ℕ) + 1)) :=
sorry

