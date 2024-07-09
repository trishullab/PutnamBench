import Mathlib
open BigOperators

abbrev putnam_2011_a1_solution : ℕ := sorry
-- 10053
theorem putnam_2011_a1
(isspiral : List (Fin 2 → ℤ) → Prop := (fun P : List (Fin 2 → ℤ) => P.length ≥ 3 ∧ P[0]! = 0 ∧
(∃ l : Fin (P.length - 1) → ℕ, l > 0 ∧ StrictMono l ∧ (∀ i : Fin (P.length - 1),
(i.1 % 4 = 0 → (P[i] 0 + l i = P[i.1 + 1]! 0 ∧ P[i] 1 = P[i.1 + 1]! 1)) ∧
(i.1 % 4 = 1 → (P[i] 0 = P[i.1 + 1]! 0 ∧ P[i] 1 + l i = P[i.1 + 1]! 1)) ∧
(i.1 % 4 = 2 → (P[i] 0 - l i = P[i.1 + 1]! 0 ∧ P[i] 1 = P[i.1 + 1]! 1)) ∧
(i.1 % 4 = 3 → (P[i] 0 = P[i.1 + 1]! 0 ∧ P[i] 1 - l i = P[i.1 + 1]! 1))))))
: {p : Fin 2 → ℤ | 0 ≤ p 0 ∧ p 0 ≤ 2011 ∧ 0 ≤ p 1 ∧ p 1 ≤ 2011 ∧ ¬∃ spiral : List (Fin 2 → ℤ), isspiral spiral ∧ spiral.getLast! = p}.encard = putnam_2011_a1_solution :=
sorry

open Topology Filter
noncomputable abbrev putnam_2011_a2_solution : ℝ := sorry
-- 2/Real.pi
theorem putnam_2011_a2
(a b : ℕ → ℝ)
(habn : ∀ n : ℕ, a n > 0 ∧ b n > 0)
(hab1 : a 0 = 1 ∧ b 0 = 1)
(hb : ∀ n ≥ 1, b n = b (n-1) * a n - 2)
(hbnd : ∃ B : ℝ, ∀ n : ℕ, |b n| ≤ B)
: Tendsto (fun n => ∑ i : Fin n, 1/(∏ j : Fin (i + 1), (a j))) atTop (𝓝 putnam_2011_a2_solution) :=
sorry

-- Note: There may be multiple possible correct answers.
noncomputable abbrev putnam_2011_a3_solution : ℝ × ℝ := sorry
-- (-1, 2 / Real.pi)
theorem putnam_2011_a3
: putnam_2011_a3_solution.2 > 0 ∧ Tendsto (fun r : ℝ => (r ^ putnam_2011_a3_solution.1 * ∫ x in Set.Ioo 0 (Real.pi / 2), x ^ r * Real.sin x) / (∫ x in Set.Ioo 0 (Real.pi / 2), x ^ r * Real.cos x)) atTop (𝓝 putnam_2011_a3_solution.2) :=
sorry


open Matrix
abbrev putnam_2011_a4_solution : Set ℕ := sorry
-- {n : ℕ | Odd n}
theorem putnam_2011_a4
(n : ℕ)
(nmat : Prop)
(npos : n > 0)
(hnmat : ∃ A : Matrix (Fin n) (Fin n) ℤ, (∀ r : Fin n, Even ((A r) ⬝ᵥ (A r))) ∧ (∀ r1 r2 : Fin n, r1 ≠ r2 → Odd ((A r1) ⬝ᵥ (A r2))))
: nmat ↔ n ∈ putnam_2011_a4_solution :=
sorry

theorem putnam_2011_a5
(F : (Fin 2 → ℝ) → ℝ)
(g : ℝ → ℝ)
(vec : ℝ → ℝ → (Fin 2 → ℝ))
(Fgrad : (Fin 2 → ℝ) → (Fin 2 → ℝ))
(parallel : (Fin 2 → ℝ) → (Fin 2 → ℝ) → Prop := (fun u v : Fin 2 → ℝ => ∃ c : ℝ, u = c • v))
(Fgdiff : ContDiff ℝ 2 F ∧ ContDiff ℝ 2 g)
(prop1 : ∀ uu : Fin 2 → ℝ, uu 0 = uu 1 → F uu = 0)
(prop2 : ∀ x : ℝ, g x > 0 ∧ x ^ 2 * g x ≤ 1)
(hvec : ∀ x y : ℝ, (vec x y) 0 = x ∧ (vec x y) 1 = y)
(hFgrad : ∀ uv : Fin 2 → ℝ, Fgrad uv 0 = deriv (fun x : ℝ => F (vec x (uv 1))) (uv 0) ∧ Fgrad uv 1 = deriv (fun y : ℝ => F (vec (uv 0) y)) (uv 1))
(prop3 : ∀ uv : Fin 2 → ℝ, Fgrad uv = 0 ∨ parallel (Fgrad uv) (vec (g u) (-g v)))
: ∃ C : ℝ, ∀ n ≥ 2, ∀ x : Fin (n + 1) → ℝ, sInf {Fxx : ℝ | ∃ i j : Fin (n + 1), i ≠ j ∧ Fxx = |F (vec (x i) (x j))|} ≤ C / n :=
sorry

theorem putnam_2011_a6
(G : Type*) [CommGroup G] [Fintype G]
(n : ℕ)
(gset : Set G)
(k : ℕ)
(mgprob : ℕ → G → ℝ := (fun (m : ℕ) (x : G) => {f : Fin m → gset | (∏ i : Fin m, (f i).1) = x}.ncard / k ^ m))
(hn : n = (Fintype.elems : Finset G).card)
(hk : gset.encard = k)
(hgsetprop : k < n)
(hgset1 : 1 ∈ gset)
(hgsetgen : Group.closure gset = G)
: ∃ b ∈ Set.Ioo (0 : ℝ) 1, ∃ C > 0, Tendsto (fun m : ℕ => (1 / b ^ (2 * m)) * (∑ x : G, (mgprob m x - 1 / n) ^ 2)) atTop (𝓝 C) :=
sorry

theorem putnam_2011_b1
(h k : ℤ)
(hkpos : h > 0 ∧ k > 0)
: ∀ ε > 0, ∃ m n : ℤ, m > 0 ∧ n > 0 ∧ ε < |h * Real.sqrt m - k * Real.sqrt n| ∧ |h * Real.sqrt m - k * Real.sqrt n| < 2 * ε :=
sorry


abbrev putnam_2011_b2_solution : Set ℕ := sorry
-- {2, 5}
theorem putnam_2011_b2
(S : Set (Fin 3 → ℕ))
(t : ℕ)
(t7inS : Prop)
(hS : S = {s : Fin 3 → ℕ | (s 0).Prime ∧ (s 1).Prime ∧ (s 2).Prime ∧ ∃ x : ℚ, (s 0) * x ^ 2 + (s 1) * x + (s 2) = 0})
(ht7inS : t7inS = ({s ∈ S | ∃ i : Fin 3, s i = t}.encard ≥ 7))
: (t.Prime ∧ t7inS) ↔ t ∈ putnam_2011_b2_solution :=
sorry


abbrev putnam_2011_b3_solution : Prop := sorry
-- True
theorem putnam_2011_b3
: ((∀ f g : ℝ → ℝ, g 0 ≠ 0 → ContinuousAt g 0 → DifferentiableAt ℝ (fun x ↦ f x * g x) 0 → DifferentiableAt ℝ (fun x ↦ f x / g x) 0 → (DifferentiableAt ℝ f 0)) ↔ putnam_2011_b3_solution) :=
sorry

theorem putnam_2011_b4
(games : Fin 2011 → Fin 2011 → Bool)
(T : Matrix (Fin 2011) (Fin 2011) ℂ := (fun p1 p2 : Fin 2011 => {g : Fin 2011 | games g p1 = games g p2}.ncard))
(W : Matrix (Fin 2011) (Fin 2011) ℂ := (fun p1 p2 : Fin 2011 => {g : Fin 2011 | games g p1 ∧ !games g p2}.ncard - {g : Fin 2011 | !games g p1 ∧ games g p2}.ncard))
: ∃ n : ℕ, (T + Complex.I • W).det = n ∧ (2 ^ 2010) ∣ n :=
sorry

theorem putnam_2011_b5
(a : ℕ → ℝ)
(h : ∃ A : ℝ, ∀ n : ℕ, ∫ x : ℝ, ((∑ i : Finset.range n, 1 / (1 + (x - a i) ^ 2)) ^ 2) ≤ A * n)
: (∃ B : ℝ, B > 0 ∧ ∀ n : ℕ, ∑' i : Finset.range n, ∑' j : Finset.range n, (1 + (a i - a j) ^ 2) ≥ B * n ^ 3) :=
sorry

open Set

theorem putnam_2011_b6
(p : ℕ)
(hp : Odd p ∧ Nat.Prime p)
: {n ∈ Finset.range p | ¬ p ∣ ∑ k : Finset.range p, Nat.factorial k * n^(k : ℕ)}.ncard ≥ (p + 1)/2 :=
sorry
