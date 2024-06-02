import Mathlib
open BigOperators


abbrev putnam_2019_a1_solution : Set ℤ := sorry
-- {n : ℤ | n ≥ 0 ∧ ¬Int.ModEq 9 n 3 ∧ ¬Int.ModEq 9 n 6}
theorem putnam_2019_a1
: {n : ℤ | ∃ A B C : ℤ, A ≥ 0 ∧ B ≥ 0 ∧ C ≥ 0 ∧ A^3 + B^3 + C^3 - 3*A*B*C = n} = putnam_2019_a1_solution :=
sorry

noncomputable abbrev putnam_2019_a3_solution : ℝ := sorry
-- 2019^(-(1:ℝ)/2019)
theorem putnam_2019_a3
(v : Polynomial ℂ → Prop := fun b : Polynomial ℂ => b.degree = 2019 ∧ 1 ≤ (b.coeff 0).re ∧ (b.coeff 2019).re ≤ 2019 ∧
(∀ i : Fin 2020, (b.coeff i).im = 0) ∧ (∀ i : Fin 2019, (b.coeff i).re < (b.coeff (i + 1)).re))
(μ : Polynomial ℂ → ℝ := fun b : Polynomial ℂ => (Multiset.map (fun ω : ℂ => ‖ω‖) (Polynomial.roots b)).sum/2019)
: (∀ b : Polynomial ℂ, v b → μ b ≥ putnam_2019_a3_solution) ∧
∀ M : ℝ, (∀ b : Polynomial ℂ, v b → μ b ≥ M) → M ≤ putnam_2019_a3_solution :=
sorry

abbrev putnam_2019_a4_solution : Prop := sorry
-- False
theorem putnam_2019_a4
(fint : ((Fin 3 → ℝ) → ℝ) → Prop)
(hfint : ∀ f : (Fin 3 → ℝ) → ℝ, fint f = (∀ S : Fin 3 → ℝ, (∫ x in {p : Fin 3 → ℝ | Euclidean.dist p S = 1}, f x) = 0))
: (∀ f : (Fin 3 → ℝ) → ℝ, (Continuous f ∧ fint f) → (∀ x : Fin 3 → ℝ, f x = 0)) ↔ putnam_2019_a4_solution :=
sorry

abbrev putnam_2019_a5_solution : ℕ → ℕ := sorry
-- (fun p : ℕ => (p - 1) / 2)
theorem putnam_2019_a5
(p : ℕ)
(q : Polynomial (ZMod p))
(a : ℕ → ZMod p)
(npoly : ℕ → Polynomial (ZMod p))
(ndiv : ℕ → Prop)
(podd : Odd p)
(pprime : p.Prime)
(hq : ∀ k : ℕ, q.coeff k = a k)
(ha0 : a 0 = 0 ∧ ∀ k > p - 1, a k = 0)
(haother : ∀ k : Set.Icc 1 (p - 1), a k = ((k : ℕ) ^ ((p - 1) / 2)) % p)
(hnpoly : ∀ n : ℕ, ∀ x : ZMod p, (npoly n).eval x = (x - 1) ^ n)
(hndiv : ∀ n : ℕ, ndiv n = (npoly n ∣ q))
: ndiv (putnam_2019_a5_solution p) ∧ ∀ n, ndiv n → n ≤ (putnam_2019_a5_solution p) :=
sorry

abbrev putnam_2019_b1_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => 5 * n + 1)
theorem putnam_2019_b1
(n : ℕ)
(Pn : Set (Fin 2 → ℤ))
(pZtoR : (Fin 2 → ℤ) → (Fin 2 → ℝ))
(sPnsquare : Finset (Fin 2 → ℤ) → Prop)
(hPn : Pn = {p : Fin 2 → ℤ | (p 0 = 0 ∧ p 1 = 0) ∨ (∃ k ≤ n, (p 0) ^ 2 + (p 1) ^ 2 = 2 ^ k)})
(hpZtoR : ∀ p : Fin 2 → ℤ, ∀ i : Fin 2, (pZtoR p) i = p i)
(hsPnsquare : ∀ sPn : Finset (Fin 2 → ℤ), sPnsquare sPn = (sPn.card = 4 ∧ ∃ p4 : Fin 4 → (Fin 2 → ℤ), Set.range p4 = sPn ∧ (∃ s > 0, ∀ i : Fin 4, Euclidean.dist (pZtoR (p4 i)) (pZtoR (p4 (i + 1))) = s) ∧ (Euclidean.dist (pZtoR (p4 0)) (pZtoR (p4 2)) = Euclidean.dist (pZtoR (p4 1)) (pZtoR (p4 3)))))
: {sPn : Finset (Fin 2 → ℤ) | (sPn : Set (Fin 2 → ℤ)) ⊆ Pn ∧ sPnsquare sPn}.encard = putnam_2019_b1_solution n :=
sorry

open Topology Filter Set
noncomputable abbrev putnam_2019_b2_solution : ℝ := sorry
-- 8/Real.pi^3
theorem putnam_2019_b2
(a : ℕ → ℝ := fun n : ℕ => ∑ k : Icc (1 : ℤ) (n - 1),
Real.sin ((2*k - 1)*Real.pi/(2*n))/((Real.cos ((k - 1)*Real.pi/(2*n))^2)*(Real.cos (k*Real.pi/(2*n))^2)))
: Tendsto (fun n : ℕ => (a n)/n^3) atTop (𝓝 putnam_2019_b2_solution) :=
sorry

open Matrix
theorem putnam_2019_b3
(n : ℕ)
(hn : n > 0)
(Q : Matrix (Fin n) (Fin n) ℝ)
(hQ0 : ∀ i j : Fin n, i ≠ j → dotProduct (Q i) (Q j) = 0 ∧ dotProduct (Qᵀ i) (Qᵀ j) = 0)
(hQ1 : ∀ i : Fin n, dotProduct (Q i) (Q i) = 1 ∧ dotProduct (Qᵀ i) (Qᵀ i) = 1)
(u : Matrix (Fin n) (Fin 1) ℝ)
(hu : uᵀ*u = 1)
(P : Matrix (Fin n) (Fin n) ℝ := 1 - (u * uᵀ))
: (Q - 1).det ≠ 0 → (P * Q - 1).det = 0 :=
sorry

abbrev putnam_2019_b5_solution :  ℕ × ℕ := sorry
-- ⟨2019, 1010⟩
theorem putnam_2019_b5
(F : ℕ → ℕ)
(P : Polynomial ℕ)
(hF : ∀ x, x ≥ 3 → F x = F (x - 1) + F (x - 2))
(F12 : F 1 = 1 ∧ F 2 = 1)
(Pdeg: Polynomial.degree P = 1008)
(hp: ∀ n : ℕ, (n ≤ 1008) → P.eval (2 * n + 1) = F (2 * n + 1))
: ∀ j k : ℕ, (P.eval 2019 = F j - F k) ↔ ⟨j, k⟩ = putnam_2019_b5_solution  :=
sorry
