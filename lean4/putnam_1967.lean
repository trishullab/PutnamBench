import Mathlib
open BigOperators
open Nat
open Topology Filter

theorem putnam_1967_a1
(n : ℕ)
(a : Set.Icc 1 n → ℝ)
(f : ℝ → ℝ := (fun x : ℝ => ∑ i : Set.Icc 1 n, a i * Real.sin (i * x)))
(npos : n > 0)
(flesin : ∀ x : ℝ, abs (f x) ≤ abs (Real.sin x))
: abs (∑ i : Set.Icc 1 n, i * a i) ≤ 1 :=
sorry

theorem putnam_1967_a2
(S : ℕ → ℤ)
(hS0 : S 0 = 1)
(hSn : ∀ n ≥ 1, S n = {A : Matrix (Fin n) (Fin n) ℕ | (∀ i j : Fin n, A i j = A j i) ∧ (∀ j : Fin n, (∑ i : Fin n, A i j) = 1)}.ncard)
: (∀ n ≥ 1, S (n + 1) = S n + n * S (n - 1)) ∧ (∀ x : ℝ, (∑' n : ℕ, S n * (x ^ n / (n)!)) = Real.exp (x + x ^ 2 / 2)) :=
sorry

abbrev putnam_1967_a3_solution : ℕ := sorry
-- 5
theorem putnam_1967_a3
(pform : Polynomial ℝ → Prop := (fun p : Polynomial ℝ => p.degree = 2 ∧ ∀ i ∈ Finset.range 3, p.coeff i = round (p.coeff i)))
(pzeros : Polynomial ℝ → Prop := (fun p : Polynomial ℝ => ∃ z1 z2 : Set.Ioo (0 : ℝ) 1, z1 ≠ z2 ∧ p.eval z1.1 = 0 ∧ p.eval z2.1 = 0))
(pall : Polynomial ℝ → Prop := (fun p : Polynomial ℝ => pform p ∧ pzeros p ∧ p.coeff 2 > 0))
: (∃ p : Polynomial ℝ, pall p ∧ p.coeff 2 = putnam_1967_a3_solution) ∧ (∀ p : Polynomial ℝ, pall p → p.coeff 2 ≥ putnam_1967_a3_solution) :=
sorry

theorem putnam_1967_a4
(lambda : ℝ)
(hlambda : lambda > 1 / 2)
: ¬∃ u : ℝ → ℝ, ∀ x ∈ Set.Icc 0 1, u x = 1 + lambda * (∫ y in Set.Ioo x 1, u y * u (y - x)) :=
sorry

-- TODO: (George) Double-check on Euclidean.dist usage here
theorem putnam_1967_a5
(R : Set (EuclideanSpace ℝ (Fin 2)))
(hR : Convex ℝ R ∧ (MeasureTheory.volume R).toReal > Real.pi / 4)
: ∃ P ∈ R, ∃ Q ∈ R, Euclidean.dist P Q = 1 :=
sorry

abbrev putnam_1967_a6_solution : ℕ := sorry
-- 8
theorem putnam_1967_a6
(abneq0 : (Fin 4 → ℝ) → (Fin 4 → ℝ) → Prop := (fun a b : Fin 4 → ℝ => a 0 * b 1 - a 1 * b 0 ≠ 0))
(numtuples : (Fin 4 → ℝ) → (Fin 4 → ℝ) → ℕ)
(hnumtuples : ∀ a b : Fin 4 → ℝ, numtuples a b = {s : Fin 4 → ℝ | ∃ x : Fin 4 → ℝ, (∀ i : Fin 4, x i ≠ 0) ∧ (∑ i : Fin 4, a i * x i) = 0 ∧ (∑ i : Fin 4, b i * x i) = 0 ∧ (∀ i : Fin 4, s i = Real.sign (x i))}.encard)
: (∃ a b : Fin 4 → ℝ, abneq0 a b ∧ numtuples a b = putnam_1967_a6_solution) ∧ (∀ a b : Fin 4 → ℝ, abneq0 a b → numtuples a b ≤ putnam_1967_a6_solution) :=
sorry

-- TODO: (George) check Euclidean dist problems after migration
theorem putnam_1967_b1
(r : ℝ)
(L : ZMod 6 → EuclideanSpace ℝ (Fin 2))
(P : EuclideanSpace ℝ (Fin 2) := midpoint ℝ (L 1) (L 2))
(Q : EuclideanSpace ℝ (Fin 2) := midpoint ℝ (L 3) (L 4))
(R : EuclideanSpace ℝ (Fin 2) := midpoint ℝ (L 5) (L 0))
(hr : r > 0)
(hcyclic : ∃ O : EuclideanSpace ℝ (Fin 2), ∀ i : ZMod 6, Euclidean.dist O (L i) = r)
(horder : ∀ i : ZMod 6, segment ℝ (L i) (L (i + 1)) ∩ interior (convexHull ℝ {L j | j : ZMod 6}) = ∅)
(hlens : Euclidean.dist (L 0) (L 1) = r ∧ Euclidean.dist (L 2) (L 3) = r ∧ Euclidean.dist (L 4) (L 5) = r)
(hdist : L 1 ≠ L 2 ∧ L 3 ≠ L 4 ∧ L 5 ≠ L 0)
: Euclidean.dist P Q = Euclidean.dist R P ∧ Euclidean.dist Q R = Euclidean.dist P Q :=
sorry

theorem putnam_1967_b2
(p r : ℝ)
(A B C α β γ : ℝ)
(prbound : 0 ≤ p ∧ p ≤ 1 ∧ 0 ≤ r ∧ r ≤ 1)
(id1 : ∀ x y : ℝ, (p * x + (1 - p) * y) ^ 2 = A * x ^ 2 + B * x * y + C * y ^ 2)
(id2 : ∀ x y : ℝ, (p * x + (1 - p) * y) * (r * x + (1 - r) * y) = α * x ^ 2 + β * x * y + γ * y ^ 2)
: max (max A B) C ≥ 4 / 9 ∧ max (max α β) γ ≥ 4 / 9 :=
sorry

theorem putnam_1967_b3
(f g : ℝ → ℝ)
(fgcont : Continuous f ∧ Continuous g)
(fgperiod : Function.Periodic f 1 ∧ Function.Periodic g 1)
: Tendsto (fun n : ℤ => ∫ x in Set.Ioo 0 1, f x * g (n * x)) atTop (𝓝 ((∫ x in Set.Ioo 0 1, f x) * (∫ x in Set.Ioo 0 1, g x))) :=
sorry

-- Note: uses (ℕ → Set.Icc 1 n → Bool) instead of (Set.Icc 0 n → Set.Icc 1 n → Bool)
theorem putnam_1967_b4
(n : ℕ)
(lockers : ℕ → Set.Icc 1 n → Bool)
(npos : n ≥ 1)
(hlockers0 : ∀ i : Set.Icc 1 n, lockers 0 i = false)
(hlockersk : ∀ k ∈ Set.Icc 1 n, ∀ i : Set.Icc 1 n, lockers k i = if k ∣ i then !(lockers (k - 1) i) else (lockers (k - 1) i))
: ∀ i : Set.Icc 1 n, lockers n i ↔ (∃ j : ℤ, j ^ 2 = i) :=
sorry

theorem putnam_1967_b5
(n : ℕ)
(hn : n > 0)
: (1 : ℚ)/2 = ∑ i in Finset.range n, (Nat.choose (n + i - 1) i) * (2 : ℚ)^(-(n : ℤ) - i) :=
sorry

-- Note: boosted domain of f to the 2D plane and made it partially differentiable everywhere
theorem putnam_1967_b6
(f : ℝ → ℝ → ℝ)
(fdiff : (∀ y : ℝ, Differentiable ℝ (fun x : ℝ => f x y)) ∧ (∀ x : ℝ, Differentiable ℝ (fun y : ℝ => f x y)))
(fbound : ∀ x y : ℝ, (x ^ 2 + y ^ 2 ≤ 1) → |f x y| ≤ 1)
: ∃ x0 y0 : ℝ, (x0 ^ 2 + y0 ^ 2 < 1) ∧ ((deriv (fun x : ℝ => f x y0) x0) ^ 2 + (deriv (fun y : ℝ => f x0 y) y0) ^ 2 ≤ 16) :=
sorry
