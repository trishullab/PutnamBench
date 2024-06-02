import Mathlib
open BigOperators

open Nat Topology Filter

abbrev putnam_2004_a1_solution : Prop := sorry
-- True
theorem putnam_2004_a1
(S : (ℕ → Fin 2) → ℕ → ℝ)
(hS : ∀ attempts : ℕ → Fin 2, ∀ N ≥ 1, S attempts N = (∑ i : Fin N, (attempts i).1) / N)
: (∀ (attempts : ℕ → Fin 2) (a b : ℕ), (1 ≤ a ∧ a < b ∧ S attempts a < 0.8 ∧ S attempts b > 0.8) → (∃ c : ℕ, a < c ∧ c < b ∧ S attempts c = 0.8)) ↔ putnam_2004_a1_solution :=
sorry


theorem putnam_2004_a3
(u : ℕ → ℝ)
(hubase : u 0 = 1 ∧ u 1 = 1 ∧ u 2 = 1)
(hudet : ∀ n : ℕ, Matrix.det (fun i j : Finset.range 2 => u (n + i * 2 + j)) = (n)!)
: ∀ n : ℕ, u n = round (u n) :=
sorry

-- Note: uses (ℕ → Fin n → ℝ) instead of (Fin N → Fin n → ℝ)
theorem putnam_2004_a4
(n : ℕ)
(x : Fin n → ℝ)
(avals : ℕ → (ℕ → Fin n → ℝ) → Prop)
(npos : n > 0)
(havals : ∀ (N : ℕ) (a : (ℕ → Fin n → ℝ)), avals N a = ∀ (i : Fin N) (j : Fin n), (a i j = -1 ∨ a i j = 0 ∨ a i j = 1))
: ∃ (N : ℕ) (c : Fin N → ℚ) (a : ℕ → Fin n → ℝ), avals N a ∧ ((∏ i : Fin n, x i) = ∑ i : Fin N, c i * (∑ j : Fin n, a i j * x j) ^ n) :=
sorry

theorem putnam_2004_a6
(f : Set.Icc (0 : ℝ) 1 → Set.Icc (0 : ℝ) 1 → ℝ)
(fcont : Continuous f)
: (∫ y : Set.Icc (0 : ℝ) 1, (∫ x : Set.Icc (0 : ℝ) 1, f x y) ^ 2) + (∫ x : Set.Icc (0 : ℝ) 1, (∫ y : Set.Icc (0 : ℝ) 1, f x y) ^ 2) ≤ (∫ y : Set.Icc (0 : ℝ) 1, (∫ x : Set.Icc (0 : ℝ) 1, f x y)) ^ 2 + (∫ y : Set.Icc (0 : ℝ) 1, (∫ x : Set.Icc (0 : ℝ) 1, (f x y) ^ 2)) :=
sorry

theorem putnam_2004_b1
(n : ℕ)
(P : Polynomial ℝ)
(isint : ℝ → Prop)
(r : ℚ)
(Pdeg : P.degree = n)
(hisint : ∀ x : ℝ, isint x = (x = round x))
(Pcoeff : ∀ i : Fin (n + 1), isint (P.coeff i))
(Preq0 : P.eval (r : ℝ) = 0)
: ∀ i : Fin n, isint (∑ j : Fin (i + 1), (P.coeff (n - j) * r ^ ((i.1 + 1) - j))) :=
sorry

theorem putnam_2004_b2
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: (m + n)! / (m + n) ^ (m + n) < ((m)! / m ^ m) * ((n)! / n ^ n) :=
sorry

abbrev putnam_2004_b5_solution : ℝ := sorry
-- 2 / Real.exp 1
theorem putnam_2004_b5
(xprod : ℝ → ℝ)
(hxprod : ∀ x ≥ 0, Tendsto (fun N : ℕ => ∏ n : Fin N, ((1 + x ^ (n.1 + 1)) / (1 + x ^ n.1)) ^ (x ^ n.1)) atTop (𝓝 (xprod x)))
: Tendsto xprod (𝓝[<] 1) (𝓝 putnam_2004_b5_solution) :=
sorry

theorem putnam_2004_b6
(A : Set ℕ)
(N : ℝ → ℕ)
(B : Set ℕ)
(b : ℕ → ℕ)
(Anempty : A.Nonempty)
(Apos : ∀ a ∈ A, a > 0)
(hN : ∀ x : ℝ, N x = Set.encard {a : A | a ≤ x})
(hB : B = {b' > 0 | ∃ a ∈ A, ∃ a' ∈ A, b' = a - a'})
(hbB : Set.range b = B ∧ ∀ i : ℕ, b i < b (i + 1))
: (∀ r : ℕ, ∃ i : ℕ, (b (i + 1) - b i) ≥ r) → Tendsto (fun x => N x / x) atTop (𝓝 0) :=
sorry

