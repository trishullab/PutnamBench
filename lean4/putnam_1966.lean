import Mathlib
open BigOperators

theorem putnam_1966_a1
(f : ℤ → ℤ := fun n : ℤ => ∑ m in Finset.Icc 0 n, (if Even m then m / 2 else (m - 1)/2))
: ∀ x y : ℤ, x > 0 ∧ y > 0 ∧ x > y → x * y = f (x + y) - f (x - y) :=
sorry

-- TODO: (George) Euclidean.dist does not compile here, see if problem persists on Lean migration
theorem putnam_1966_a2
(r : ℝ)
(A B C : EuclideanSpace ℝ (Fin 2))
(hABC : ¬Collinear ℝ {A, B, C})
(a : ℝ := Euclidean.dist B C)
(b : ℝ := Euclidean.dist C A)
(c : ℝ := Euclidean.dist A B)
(p : ℝ := (Euclidean.dist B C + Euclidean.dist C A + Euclidean.dist A B)/2)
(hr : ∃ I : EuclideanSpace ℝ (Fin 2),
(∃! P : EuclideanSpace ℝ (Fin 2), Euclidean.dist I P = r ∧ Collinear ℝ {P, B, C}) ∧
(∃! Q : EuclideanSpace ℝ (Fin 2), Euclidean.dist I Q = r ∧ Collinear ℝ {Q, C, A}) ∧
(∃! R : EuclideanSpace ℝ (Fin 2), Euclidean.dist I R = r ∧ Collinear ℝ {R, A, B}) ∧
(∀ Z : EuclideanSpace ℝ (Fin 2), Euclidean.dist I Z = r → Z ∈ convexHull ℝ {A, B, C}))
: 1/(p - a)^2 + 1/(p - b)^2 + 1/(p - c)^2 ≥ 1/r^2 :=
sorry

open Topology Filter
theorem putnam_1966_a3
(x : ℕ → ℝ)
(hx1 : 0 < x 1 ∧ x 1 < 1)
(hxi : ∀ n ≥ 1, x (n + 1) = (x n) * (1 - (x n)))
: Tendsto (fun n : ℕ => n * (x n)) atTop (𝓝 1) :=
sorry

theorem putnam_1966_a4
(a : ℕ → ℤ)
(ha1 : a 1 = 2)
(hai : ∀ n ≥ 1, a (n + 1) = (if ∃ m : ℤ, m^2 = a n + 1 = True then a n + 2 else a n + 1))
: ∀ n ≥ 1, a n = n + round (Real.sqrt n) :=
sorry

theorem putnam_1966_a5
(C : Set (ℝ → ℝ) := {f : ℝ → ℝ | Continuous f})
(T : (ℝ → ℝ) → (ℝ → ℝ))
(imageTC : ∀ f ∈ C, T f ∈ C)
(linearT : ∀ a b : ℝ, ∀ f ∈ C, ∀ g ∈ C, T ((fun x => a)*f + (fun x => b)*g) = (fun x => a)*(T f) + (fun x => b)*(T g))
(localT : ∀ r s : ℝ, r ≤ s → ∀ f ∈ C, ∀ g ∈ C, (∀ x ∈ Set.Icc r s, f x = g x) → (∀ x ∈ Set.Icc r s, T f x = T g x))
: ∃ f ∈ C, ∀ g ∈ C, T g = f * g :=
sorry

theorem putnam_1966_a6
(a : ℕ → (ℕ → ℝ))
(ha : ∀ n ≥ 1, a n n = n ∧ ∀ m ≥ 1, m < n → a n m = m * Real.sqrt (1 + a n (m + 1)))
: Tendsto (fun n => a n 1) atTop (𝓝 3) :=
sorry

theorem putnam_1966_b1
(n : ℕ)
(hN : n ≥ 3)
(L : ZMod n → (Fin 2 → ℝ))
(hsq : ∀ i : ZMod n, L i 0 ∈ Set.Icc 0 1 ∧ L i 1 ∈ Set.Icc 0 1)
(hnoncol : ∀ i j k : ZMod n, i ≠ j ∧ j ≠ k ∧ k ≠ i → ¬Collinear ℝ {L i, L j, L k})
(hconvex : ∀ i : ZMod n, segment ℝ (L i) (L (i + 1)) ∩ interior (convexHull ℝ {L j | j : ZMod n}) = ∅)
: ∑ i : Fin n, (Euclidean.dist (L i) (L (i + 1)))^2 ≤ 4 :=
sorry

theorem putnam_1966_b2
(S : ℤ → Set ℤ := fun n : ℤ => {n, n + 1, n + 2, n + 3, n + 4, n + 5, n + 6, n + 7, n + 8, n + 9})
: ∀ n : ℤ, n > 0 → (∃ k ∈ S n, ∀ m ∈ S n, k ≠ m → IsCoprime m k) :=
sorry

theorem putnam_1966_b3
(p : ℕ → ℝ)
(hpos : ∀ n : ℕ, p n > 0)
(hconv : ∃ r : ℝ, Tendsto (fun m : ℕ => ∑ n in Finset.Icc 1 m, 1/(p n)) atTop (𝓝 r))
: ∃ r : ℝ, Tendsto (fun m : ℕ => ∑ n in Finset.Icc 1 m, (p n) * n^2/(∑ i in Finset.Icc 1 n, p i)^2) atTop (𝓝 r) :=
sorry

theorem putnam_1966_b4
(m n : ℕ)
(S : Finset ℕ)
(hS : (∀ i ∈ S, i > 0) ∧ S.card = m * n + 1)
: ∃ T ⊆ S, (T.card = m + 1 ∧ ∀ j ∈ T, ∀ i ∈ T, i ≠ j → ¬(j ∣ i)) ∨ (T.card = n + 1 ∧ ∀ i ∈ T, ∀ j ∈ T, j < i → j ∣ i) :=
sorry

theorem putnam_1966_b5
(S : Finset (EuclideanSpace ℝ (Fin 2)))
(hcard : S.card ≥ 3)
(hS : ∀ s ⊆ S, s.card = 3 → ¬Collinear ℝ s.toSet)
: ∃ L : ZMod S.card → (EuclideanSpace ℝ (Fin 2)), (∀ p ∈ S, ∃! i : ZMod S.card, p = L i) ∧
∀ i j : ZMod S.card, i ≠ j → (∀ I : EuclideanSpace ℝ (Fin 2),
(I ∈ segment ℝ (L i) (L (i + 1)) ∧ I ∈ segment ℝ (L j) (L (j + 1))) →
I = L i ∨ I = L (i + 1) ∨ I = L j ∨ I = L (j + 1)) :=
sorry

theorem putnam_1966_b6
(y : ℝ → ℝ)
(hy : Differentiable ℝ y ∧ Differentiable ℝ (deriv y))
(diffeq : deriv (deriv y) + Real.exp * y = 0)
: ∃ r s N : ℝ, ∀ x > N, r ≤ y x ∧ y x ≤ s :=
sorry
