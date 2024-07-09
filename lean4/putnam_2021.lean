import Mathlib
open BigOperators

open Filter Topology

abbrev putnam_2021_a1_solution : ℕ := sorry
-- 578
theorem putnam_2021_a1
(P : List (ℤ × ℤ) → Prop := fun l : List (ℤ × ℤ) => l.length ≥ 1 ∧ l[0]! = (0, 0) ∧ l[l.length-1]! = (2021, 2021) ∧
∀ n ∈ Finset.range (l.length-1), Real.sqrt ((l[n]!.1 - l[n + 1]!.1)^2 + (l[n]!.2 - l[n + 1]!.2)^2) = 5)
: (∃ l : List (ℤ × ℤ), P l ∧ l.length = putnam_2021_a1_solution) ∧
∀ l : List (ℤ × ℤ), P l → l.length ≥ putnam_2021_a1_solution :=
sorry

abbrev putnam_2021_a2_solution : ℝ := sorry
-- Real.exp 1
theorem putnam_2021_a2
(g : ℝ → ℝ)
(hg : ∀ x > 0, Tendsto (fun r : ℝ => ((x + 1) ^ (r + 1) - x ^ (r + 1)) ^ (1 / r)) (𝓝 0) (𝓝 (g x)))
: Tendsto (fun x : ℝ => g x / x) atTop (𝓝 putnam_2021_a2_solution) :=
sorry

abbrev putnam_2021_a3_solution : Set ℕ := sorry
-- {3 * m ^ 2 | m > 0}
theorem putnam_2021_a3
(N : ℕ)
(Nsphere : Set (Fin 3 → ℝ) := {p : Fin 3 → ℝ | (p 0) ^ 2 + (p 1) ^ 2 + (p 2) ^ 2 = N})
(intcoords : (Fin 3 → ℝ) → Prop := (fun p : Fin 3 → ℝ => ∀ i : Fin 3, p i = round (p i)))
(Ntetra : Prop := ∃ A B C D : Fin 3 → ℝ, A ∈ Nsphere ∧ B ∈ Nsphere ∧ C ∈ Nsphere ∧ D ∈ Nsphere ∧ intcoords A ∧ intcoords B ∧ intcoords C ∧ intcoords D ∧
(∃ s > 0, Euclidean.dist A B = s ∧ Euclidean.dist A C = s ∧ Euclidean.dist A D = s ∧ Euclidean.dist B C = s ∧ Euclidean.dist B D = s ∧ Euclidean.dist C D = s))
: (N > 0 ∧ Ntetra) ↔ N ∈ putnam_2021_a3_solution :=
sorry

noncomputable abbrev putnam_2021_a4_solution : ℝ := sorry
-- ((Real.sqrt 2) / 2) * Real.pi * Real.log 2
theorem putnam_2021_a4
(S : ℝ → Set (Fin 2 → ℝ) := fun R : ℝ => {p : (Fin 2 → ℝ) | (p 0)^2 + (p 1)^2 ≤ R^2})
(I : ℝ → ℝ := fun R : ℝ => ∫ p in S R,
(1 + 2*(p 0)^2)/(1 + (p 0)^4 + 6*(p 0)^2*(p 1)^2 + (p 1)^4) - (1 + (p 1)^2)/(2 + (p 0)^4 + (p 1)^4))
: Tendsto I atTop (𝓝 putnam_2021_a4_solution) :=
sorry

abbrev putnam_2021_a5_solution : Set ℕ := sorry
-- {j : ℕ | ¬(42 ∣ j) ∧ ¬(46 ∣ j)}
theorem putnam_2021_a5
(j : ℕ)
(A : Finset ℕ)
(S : ℕ → ℕ)
(hA : A = {n : ℕ | 1 ≤ n ∧ n ≤ 2021 ∧ Nat.gcd n 2021 = 1})
(hS : ∀ j' : ℕ, S j' = ∑ n in A, n ^ j')
: (2021 ∣ S j) ↔ j ∈ putnam_2021_a5_solution :=
sorry

abbrev putnam_2021_a6_solution : Prop := sorry
-- True
theorem putnam_2021_a6
(Pcoeff : Polynomial ℤ → Prop)
(Pprod : Polynomial ℤ → Prop)
(hPcoeff : ∀ P : Polynomial ℤ, Pcoeff P = (∀ n : ℕ, P.coeff n = 0 ∨ P.coeff n = 1))
(hPprod : ∀ P : Polynomial ℤ, Pprod P = (∃ Q R : Polynomial ℤ, Q.degree > 0 ∧ R.degree > 0 ∧ P = Q * R))
: (∀ P : Polynomial ℤ, (Pcoeff P ∧ Pprod P) → (P.eval 2 ≠ 0 ∧ P.eval 2 ≠ 1 ∧ ¬Prime (P.eval 2))) ↔ putnam_2021_a6_solution :=
sorry


noncomputable abbrev putnam_2021_b2_solution : ℝ := sorry
-- 2 / 3
theorem putnam_2021_b2
(S : (ℕ → ℝ) → ℝ)
(asum : (ℕ → ℝ) → Prop)
(hS : ∀ a : ℕ → ℝ, S a = ∑' n : ℕ, (n + 1) / 2 ^ (n + 1) * (∏ k : Fin (n + 1), a k.1) ^ ((1 : ℝ) / (n + 1)))
(hasum : ∀ a : ℕ → ℝ, asum a = (∀ k : ℕ, a k ≥ 0) ∧ ∑' k : ℕ, a k = 1)
: (∃ a : ℕ → ℝ, asum a ∧ S a = putnam_2021_b2_solution) ∧ (∀ a : ℕ → ℝ, asum a → S a ≤ putnam_2021_b2_solution) :=
sorry

abbrev putnam_2021_b3_solution : Prop := sorry
-- True
theorem putnam_2021_b3
(vec : ℝ → ℝ → (Fin 2 → ℝ))
(rho : ((Fin 2 → ℝ) → ℝ) → (Fin 2 → ℝ) → ℝ := (fun (h : (Fin 2 → ℝ) → ℝ) (p : Fin 2 → ℝ) => (p 1) * deriv (fun x' : ℝ => h (vec x' (p 1))) (p 0) - (p 0) * deriv (fun y' : ℝ => h (vec (p 0) y')) (p 1)))
(circint : (Fin 2 → ℝ) → ℝ → Set (Fin 2 → ℝ) := (fun (c : Fin 2 → ℝ) (r : ℝ) => {p : Fin 2 → ℝ | Euclidean.dist p c < r}))
(hvec : ∀ x y : ℝ, (vec x y) 0 = x ∧ (vec x y 1) = y)
: (∀ h : (Fin 2 → ℝ) → ℝ, ContDiff ℝ 2 h → (∀ d > 0, ∀ r > 0, d > r → (∃ c : Fin 2 → ℝ, Euclidean.dist c 0 = d ∧ (∫ p in (circint c r), rho h p) = 0))) ↔ putnam_2021_b3_solution :=
sorry

theorem putnam_2021_b4
(F : ℕ → ℕ)
(hF : ∀ x, x ≥ 2 → F x = F (x - 1) + F (x - 2))
(F01 : F 0 = 0 ∧ F 1 = 1)
: ∀ m, m > 2 → (∃ p,  (∏ k : Set.Icc 1 (F m - 1),  (k.1 ^ k.1))  % F m = F p) :=
sorry

theorem putnam_2021_b5
(n : ℕ)
(veryodd : Matrix (Fin n) (Fin n) ℤ → Prop := (fun A : Matrix (Fin n) (Fin n) ℤ => ∀ m ∈ Set.Icc 1 n, ∀ reind : Fin m → Fin n, Function.Injective reind → Odd (A.submatrix reind reind).det))
(npos : n ≥ 1)
: ∀ A : Matrix (Fin n) (Fin n) ℤ, veryodd A → (∀ k ≥ 1, veryodd (A ^ k)) :=
sorry
