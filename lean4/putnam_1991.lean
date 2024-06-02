import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_1991_a2_solution : Prop := sorry
-- False
theorem putnam_1991_a2
(n : ℕ)
(npos : n ≥ 1)
: (∃ A B : Matrix (Fin n) (Fin n) ℝ, A ≠ B ∧ A ^ 3 = B ^ 3 ∧ A ^ 2 * B = B ^ 2 * A ∧ Nonempty (Invertible (A ^ 2 + B ^ 2))) ↔ putnam_1991_a2_solution :=
sorry

-- Note: uses (ℕ → ℝ) instead of (Fin n → ℝ)
abbrev putnam_1991_a3_solution : Set (Polynomial ℝ) := sorry
-- {p : Polynomial ℝ | p.degree = 2 ∧ (∃ r1 r2 : ℝ, r1 ≠ r2 ∧ p.eval r1 = 0 ∧ p.eval r2 = 0)}
theorem putnam_1991_a3
(p : Polynomial ℝ)
(n : ℕ)
(pr : Prop)
(hn : n = p.degree)
(hpr : pr = ∃ r : ℕ → ℝ, (∀ i : Fin (n - 1), r i < r (i + 1)) ∧ (∀ i : Fin n, p.eval (r i) = 0) ∧ (∀ i : Fin (n - 1), (Polynomial.derivative p).eval ((r i + r (i + 1)) / 2) = 0))
: (n ≥ 2 ∧ pr) ↔ p ∈ putnam_1991_a3_solution :=
sorry

abbrev putnam_1991_a4_solution : Prop := sorry
-- True
theorem putnam_1991_a4
(climit : (ℕ → (Fin 2 → ℝ)) → Prop)
(rareas : (ℕ → ℝ) → Prop)
(crline : (ℕ → (Fin 2 → ℝ)) → (ℕ → ℝ) → Prop)
(hclimit : ∀ c : ℕ → (Fin 2 → ℝ), climit c = ¬∃ (p : Fin 2 → ℝ), ∀ ε : ℝ, ε > 0 → ∃ i : ℕ, c i ∈ Metric.ball p ε)
(hrareas : ∀ r : ℕ → ℝ, rareas r = ∃ A : ℝ, Tendsto (fun n : ℕ => ∑ i : Fin n, Real.pi * (r i) ^ 2) atTop (𝓝 A))
(hcrline : ∀ (c : ℕ → (Fin 2 → ℝ)) (r : ℕ → ℝ), crline c r = (∀ v w : Fin 2 → ℝ, w ≠ 0 → ∃ i : ℕ, {p : Fin 2 → ℝ | ∃ t : ℝ, p = v + t • w} ∩ Metric.closedBall (c i) (r i) ≠ ∅))
: (∃ (c : ℕ → (Fin 2 → ℝ)) (r : ℕ → ℝ), (∀ i : ℕ, r i ≥ 0) ∧ climit c ∧ rareas r ∧ crline c r) ↔ putnam_1991_a4_solution :=
sorry

noncomputable abbrev putnam_1991_a5_solution : ℝ := sorry
-- 1 / 3
theorem putnam_1991_a5
(f : Set.Icc (0 : ℝ) 1 → ℝ)
(hf : ∀ y : Set.Icc 0 1, f y = ∫ x in Set.Ioo 0 y, Real.sqrt (x ^ 4 + (y - y ^ 2) ^ 2))
: (∃ y : Set.Icc 0 1, f y = putnam_1991_a5_solution) ∧ (∀ y : Set.Icc 0 1, f y ≤ putnam_1991_a5_solution) :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Fin r → ℕ) and (Fin s → ℕ)
theorem putnam_1991_a6
(nabsum : ℕ → ℕ × (ℕ → ℕ) → Prop)
(agt : ℕ × (ℕ → ℕ) → Prop)
(A : ℕ → ℕ)
(bge : ℕ × (ℕ → ℕ) → Prop)
(g : ℕ → ℕ)
(bg1 : ℕ × (ℕ → ℕ) → Prop)
(bg2 : ℕ × (ℕ → ℕ) → Prop)
(B : ℕ → ℕ)
(hnabsum : ∀ n ≥ 1, ∀ ab : ℕ × (ℕ → ℕ), nabsum n ab = (ab.1 ≥ 1 ∧ (∀ i < ab.1, ab.2 i > 0) ∧ (∀ i ≥ ab.1, ab.2 i = 0) ∧ (∑ i : Fin ab.1, ab.2 i) = n))
(hagt : ∀ a : ℕ × (ℕ → ℕ), agt a = ∀ i : Fin (a.1 - 1), a.2 i > a.2 (i + 1) + a.2 (i + 2))
(hA : ∀ n ≥ 1, A n = {a : ℕ × (ℕ → ℕ) | nabsum n a ∧ agt a}.encard)
(hbge : ∀ b : ℕ × (ℕ → ℕ), bge b = ∀ i : Fin (b.1 - 1), b.2 i ≥ b.2 (i + 1))
(hg : g 0 = 1 ∧ g 1 = 2 ∧ (∀ j ≥ 2, g j = g (j - 1) + g (j - 2) + 1))
(hbg1 : ∀ b : ℕ × (ℕ → ℕ), bg1 b = ∀ i : Fin b.1, ∃ j : ℕ, b.2 i = g j)
(hbg2 : ∀ b : ℕ × (ℕ → ℕ), bg2 b = ∃ k : ℕ, b.2 0 = g k ∧ (∀ j ≤ k, ∃ i : Fin b.1, b.2 i = g j))
(hB : ∀ n ≥ 1, B n = {b : ℕ × (ℕ → ℕ) | nabsum n b ∧ bge b ∧ bg1 b ∧ bg2 b}.encard)
: ∀ n ≥ 1, A n = B n :=
sorry

abbrev putnam_1991_b1_solution : Set ℤ := sorry
-- {A : ℤ | ∃ x > 0, A = x ^ 2}
theorem putnam_1991_b1
(m : ℤ → ℤ)
(S : ℤ → ℤ)
(A : ℤ)
(a : ℕ → ℤ)
(hm : ∀ n : ℤ, n ≥ 0 → (m n) ^ 2 ≤ n ∧ (∀ m' : ℤ, m' ^ 2 ≤ n → m' ≤ m n))
(hS : ∀ n : ℤ, n ≥ 0 → S n = n - (m n) ^ 2)
(ha : a 0 = A ∧ (∀ k : ℕ, a (k + 1) = a k + S (a k)))
: (A > 0 ∧ (∃ (K : ℕ) (c : ℕ), ∀ k ≥ K, a k = c)) ↔ A ∈ putnam_1991_b1_solution :=
sorry

theorem putnam_1991_b2
(f g : ℝ → ℝ)
(fgnconst : ¬∃ c : ℝ, f = Function.const ℝ c ∨ g = Function.const ℝ c)
(fgdiff : Differentiable ℝ f ∧ Differentiable ℝ g)
(fadd : ∀ x y : ℝ, f (x + y) = f x * f y - g x * g y)
(gadd : ∀ x y : ℝ, g (x + y) = f x * g y + g x * f y)
: (deriv f 0 = 0) → (∀ x : ℝ, (f x) ^ 2 + (g x) ^ 2 = 1) :=
sorry

theorem putnam_1991_b4
(p : ℕ)
(podd : Odd p)
(pprime : Prime p)
: (∑ j : Fin (p + 1), (p.choose j) * ((p + j).choose j)) ≡ (2 ^ p + 1) [MOD (p ^ 2)] :=
sorry

abbrev putnam_1991_b5_solution : ℕ → ℕ := sorry
-- (fun p : ℕ => Nat.ceil ((p : ℝ) / 4))
theorem putnam_1991_b5
(p : ℕ)
(podd : Odd p)
(pprime : Prime p)
: ({z : ZMod p | ∃ x : ZMod p, z = x ^ 2} ∩ {z : ZMod p | ∃ y : ZMod p, z = y ^ 2 + 1}).encard = putnam_1991_b5_solution p :=
sorry

noncomputable abbrev putnam_1991_b6_solution : ℝ → ℝ → ℝ := sorry
-- (fun a b : ℝ => |Real.log (a / b)|)
theorem putnam_1991_b6
(a b : ℝ)
(cle : ℝ → Prop)
(abpos : a > 0 ∧ b > 0)
(hcle : ∀ c : ℝ, cle c = ∀ u : ℝ, (0 < |u| ∧ |u| ≤ c) → (∀ x ∈ Set.Ioo 0 1, a ^ x * b ^ (1 - x) ≤ a * (Real.sinh (u * x) / Real.sinh u) + b * (Real.sinh (u * (1 - x)) / Real.sinh u)))
: cle (putnam_1991_b6_solution a b) ∧ (∀ c : ℝ, cle c → c ≤ putnam_1991_b6_solution a b) :=
sorry
