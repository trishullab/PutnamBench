import Mathlib
open BigOperators

section putnam_2023
open Nat

abbrev putnam_2023_a1_solution : ℕ := sorry
-- 18
theorem putnam_2023_a1
(N : ℕ)
(hn : N > 0)
(f : ℕ → ℝ → ℝ)
(hf : ∀ n : ℕ, ∀ x : ℝ, f n x = ∏ i : Set.Icc 1 n, Real.cos (i * x))
: (|iteratedDeriv 2 (f N) 0| > 2023 ∧ ∀ m < N, (|iteratedDeriv 2 (f m) 0| ≤ 2023)) ↔ n = putnam_2023_a1_solution :=
sorry

abbrev putnam_2023_a2_solution : ℕ → Set ℝ := sorry
-- fun n => {(-1 : ℝ)/(factorial n), (-1 : ℝ)/(factorial n)}
theorem putnam_2023_a2
(n : ℕ)
(hn0 : n > 0)
(hnev : Even n)
(p : Polynomial ℝ)
(hp : Polynomial.Monic p)
(hpinv : ∀ k : ℤ, |k| ≥ 1 ∧ |k| ≤ n → p.eval (1/k : ℝ) = k^2)
: ∀ x : ℝ, (p.eval (1/x) = x^2 ∧ ¬ ∃ k : ℤ, x = k ∧ |k| < n) ↔ x ∈ putnam_2023_a2_solution n :=
sorry

noncomputable abbrev putnam_2023_a3_solution : ℝ := sorry
-- Real.pi / 2
theorem putnam_2023_a3
(r : ℝ)
(hr : r > 0)
(p : ℝ → Prop)
(h : p = λ t => ∃ g f : ℝ → ℝ, ContDiff ℝ 1 f → ContDiff ℝ 1 g →
(f 0 > 0 ∧ g 0 = 0 ∧ (∀ x : ℝ, |deriv f x| ≤ |g x| ∧ |deriv g x| ≤ |f x|) ∧ f t = 0))
: ((p r) ∧ ∀ t : ℝ, t > 0 → t < r → ¬ (p t)) ↔ r = putnam_2023_a3_solution :=
sorry

abbrev putnam_2023_b2_solution : ℕ := sorry
-- 3
theorem putnam_2023_b2
: sInf {k | ∃ n : ℕ, k = List.sum (digits 2 (2023*n))} = putnam_2023_b2_solution :=
sorry

def num_ones : List ℕ → ℕ
| [] => (0 : ℕ)
| (h :: t) => if h = 1 then num_ones t + 1 else num_ones t
abbrev putnam_2023_a5_solution : Set ℂ := sorry
-- {-(3^1010 - 1)/2, -(3^1010 - 1)/2 + sqrt (9^1010 - 1) * Complex.I/4, -(3^1010 - 1)/2 - sqrt (9^1010 - 1) * Complex.I/4}
theorem putnam_2023_a5
(f : ℂ → ℂ := ∑ k in Finset.range (3^1010), (-2)^( num_ones (digits 3 k)) * (z + k)^2023)
: ∀ z : ℂ, z ∈ putnam_2023_a5_solution ↔ f z = 0 :=
sorry

open Topology Filter
-- Note: uses (ℕ → ℝ) instead of (Fin (n + 1) → ℝ) and (ℝ → ℝ) instead of (tall ts → ℝ)
abbrev putnam_2023_b4_solution : ℝ := sorry
-- 29
theorem putnam_2023_b4
(tne : ℕ → (ℕ → ℝ) → Set ℝ)
(fdiff : ℕ → (ℕ → ℝ) → (ℝ → ℝ) → Prop)
(flim : ℕ → (ℕ → ℝ) → (ℝ → ℝ) → Prop)
(fderiv1 : ℕ → (ℕ → ℝ) → (ℝ → ℝ) → Prop)
(fderiv2 : ℕ → (ℕ → ℝ) → (ℝ → ℝ) → Prop)
(fall : ℕ → (ℕ → ℝ) → (ℝ → ℝ) → Prop)
(tinc : ℕ → (ℕ → ℝ) → Prop)
(Tall : ℝ → Prop)
(htne : ∀ n : ℕ, ∀ ts : ℕ → ℝ, tne n ts = {t : ℝ | t > ts 0 ∧ ∀ i : Fin n, t ≠ ts (i.1 + 1)})
(hfdiff : ∀ n : ℕ, ∀ ts : ℕ → ℝ, ∀ f : ℝ → ℝ, fdiff n ts f = (ContinuousOn f (Set.Ici (ts 0)) ∧ ContDiffOn ℝ 1 f (tne n ts) ∧ DifferentiableOn ℝ (derivWithin f (tne n ts)) (tne n ts)))
(hflim : ∀ n : ℕ, ∀ ts : ℕ → ℝ, ∀ f : ℝ → ℝ, flim n ts f = ∀ k : Fin (n + 1), Tendsto (derivWithin f (tne n ts)) (𝓝[>] (ts k.1)) (𝓝 0))
(hfderiv1 : ∀ n : ℕ, ∀ ts : ℕ → ℝ, ∀ f : ℝ → ℝ, fderiv1 n ts f = ∀ k : Fin n, ∀ t ∈ Set.Ioo (ts k.1) (ts (k.1 + 1)), iteratedDerivWithin 2 f (tne n ts) t = k.1 + 1)
(hfderiv2 : ∀ n : ℕ, ∀ ts : ℕ → ℝ, ∀ f : ℝ → ℝ, fderiv2 n ts f = ∀ t > ts n, iteratedDerivWithin 2 f (tne n ts) t = n + 1)
(hfall : ∀ n : ℕ, ∀ ts : ℕ → ℝ, ∀ f : ℝ → ℝ, fall n ts f = (fdiff n ts f ∧ f (ts 0) = 0.5 ∧ flim n ts f ∧ fderiv1 n ts f ∧ fderiv2 n ts f))
(htinc : ∀ n : ℕ, ∀ ts : ℕ → ℝ, tinc n ts = ∀ k : Fin n, ts (k.1 + 1) ≥ ts k.1 + 1)
(hTall : ∀ T : ℝ, Tall T = ((T ≥ 0) ∧ ∃ n : ℕ, ∃ ts : ℕ → ℝ, ∃ f : ℝ → ℝ, tinc n ts ∧ fall n ts f ∧ f (ts 0 + T) = 2023))
: Tall putnam_2023_b4_solution ∧ ∀ T : ℝ, Tall T → T ≥ putnam_2023_b4_solution :=
sorry



abbrev putnam_2023_b5_solution : Set ℕ := sorry
-- {n : ℕ | n = 1 ∨ n ≡ 2 [MOD 4]}
theorem putnam_2023_b5
(n : ℕ)
(perm : Prop)
(hperm : perm = ∀ m : ℤ, IsRelPrime m n → ∃ p : Equiv.Perm (Fin n), ∀ k : Fin n, (p (p k)).1 + 1 ≡ m * (k.1 + 1) [ZMOD n])
: (n > 0 ∧ perm) ↔ n ∈ putnam_2023_b5_solution :=
sorry

abbrev putnam_2023_b6_solution : ℕ → ℤ := sorry
-- (fun n : ℕ => (-1) ^ (Nat.ceil (n / 2) - 1) * 2 * Nat.ceil (n / 2))
theorem putnam_2023_b6
(n : ℕ)
(S : Matrix (Fin n) (Fin n) ℤ)
(npos : n > 0)
(hS : ∀ i j : Fin n, S i j = ∑' a : ℕ, ∑' b : ℕ, if a * (i.1 + 1) + b * (j.1 + 1) = n then 1 else 0)
: S.det = putnam_2023_b6_solution n :=
sorry

end putnam_2023

section putnam_2022

open Polynomial

abbrev putnam_2022_a1_solution : Set (ℝ × ℝ) := sorry
-- {(0,0)} ∪ {q | let ⟨a,b⟩ := q; |a| ≥ 1} ∪ {q | let ⟨a, b⟩ := q; |a| > 0 ∧ |a| < 1 ∧ (b < (Real.log (1 - Real.sqrt (1-a^2)) /a)^2 - |a| * (1 - Real.sqrt (1-a^2) /a ) ∨ b > (Real.log (1 - Real.sqrt (1+a^2)/a) )^2 - |a| * (1 - Real.sqrt (1+a^2)/a))}
theorem putnam_2022_a1
: ∀ a b : ℝ, (∃! x : ℝ, a * x + b = Real.log (1 + x^2)) ↔ (a, b) ∈ putnam_2022_a1_solution :=
sorry

noncomputable def num_neg_coeff (n : ℕ) (P : ℝ[X]) : ℕ := ∑ i : Fin (n + 1), (if P.coeff (i : ℕ) < 0 then 1 else 0)
abbrev putnam_2022_a2_solution : ℕ → ℕ := sorry
-- fun n => 2 * n - 2
theorem putnam_2022_a2
(n : ℕ)
(hn : n ≥ 2)
: (∀ P : ℝ[X], natDegree P = n → num_neg_coeff n (P * P) ≥ putnam_2022_a2_solution n) ∧ (∃ P : ℝ[X], natDegree P = n ∧ num_neg_coeff n (P * P) = putnam_2022_a2_solution) :=
sorry

theorem putnam_2022_a3
(p : ℕ)
(hp : p ≥ 5 ∧ Nat.Prime p)
(Sp : Set (ℕ → Finset.Icc 1 (p - 1)))
(hSp : ∀ a ∈ Sp, ∀ n ≥ 1, (a n * a (n + 2)) ≡ (1 + a (n + 1)) [MOD p])
: (Set.ncard Sp ≡ 0 [MOD 5]) ∨ (Set.ncard Sp ≡ 2 [MOD 5]) :=
sorry

-- Note: uses (ℕ → ℝ) instead of (Fin (2 * n) → ℝ)
abbrev putnam_2022_a6_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => n)
theorem putnam_2022_a6
(n : ℕ)
(xlt : (ℕ → ℝ) → Prop)
(mxsum : ℕ → (ℕ → ℝ) → Prop)
(mexx : ℕ → Prop)
(npos : n > 0)
(hxlt : ∀ x : ℕ → ℝ, xlt x = ((-1 < x 1) ∧ (∀ i : Set.Icc 1 (2 * n - 1), x i < x (i + 1)) ∧ (x (2 * n) < 1)))
(hmxsum : ∀ m : ℕ, ∀ x : ℕ → ℝ, mxsum m x = ∀ k ∈ Set.Icc 1 m, (∑ i : Fin n, ((x (2 * (i.1 + 1))) ^ (2 * k - 1) - (x (2 * (i.1 + 1) - 1)) ^ (2 * k - 1))) = 1)
(hmexx : ∀ m : ℕ, mexx m = ∃ x : ℕ → ℝ, xlt x ∧ mxsum m x)
: mexx (putnam_2022_a6_solution n) ∧ (∀ m : ℕ, mexx m → m ≤ putnam_2022_a6_solution n) :=
sorry

theorem putnam_2022_b1
(n : ℕ)
(P : Polynomial ℝ)
(B : Polynomial ℝ)
(npos : n ≥ 1)
(Pconst : P.coeff 0 = 0)
(Pdegree : P.degree = n)
(Pint : ∀ k : Set.Icc 1 n, P.coeff k = round (P.coeff k))
(Podd : Odd (round (P.coeff 1)))
(hB : ∀ x : ℝ, Real.exp (P.eval x) = B.eval x)
: ∀ k : ℕ, B.coeff k ≠ 0 :=
sorry


abbrev putnam_2022_b2_solution : Set ℕ := sorry
-- {1, 7}
theorem putnam_2022_b2
(n : ℕ)
(Scross : Finset (Fin 3 → ℝ) → Prop)
(hScross : ∀ S : Finset (Fin 3 → ℝ), Scross S = (S = {u : Fin 3 → ℝ | ∃ v w : S, u = crossProduct v w}))
: (n > 0 ∧ ∃ S : Finset (Fin 3 → ℝ), S.card = n ∧ Scross S) ↔ n ∈ putnam_2022_b2_solution :=
sorry


-- Note: uses (ℕ → ℝ) instead of (Fin n → ℝ)
abbrev putnam_2022_b4_solution : Set ℕ := sorry
-- {n : ℕ | 3 ∣ n ∧ n ≥ 9}
theorem putnam_2022_b4
(n : ℕ)
(ap3 : ℝ → ℝ → ℝ → Prop)
(xprog : (ℕ → ℝ) → Prop)
(hap3 : ∀ x0 x1 x2 : ℝ, ap3 x0 x1 x2 = ∀ o0 o1 o2 : ℝ, (o0 < o1 ∧ o1 < o2 ∧ ({o0, o1, o2} : Set ℝ) = {x0, x1, x2}) → (o1 - o0 = o2 - o1))
(hxprog : ∀ x : ℕ → ℝ, xprog x = ((∀ i j : Fin n, i.1 ≠ j.1 → x i.1 ≠ x j.1) ∧ (∀ i : Fin n, ap3 (x i.1) (x ((i.1 + 1) % n)) (x ((i.1 + 2) % n)))))
: (n ≥ 4 ∧ ∃ x : ℕ → ℝ, xprog x) ↔ n ∈ putnam_2022_b4_solution :=
sorry


-- Note: uses (ℝ → ℝ) instead of (Rpos → Rpos) to check the equality property
abbrev putnam_2022_b6_solution : Set (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ)) := sorry
-- {f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ) | ∃ c : ℝ, c ≥ 0 ∧ ∀ x : Set.Ioi (0 : ℝ), f x = 1 / (1 + c * x)}
theorem putnam_2022_b6
(f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ))
(eq : Prop)
(heq : eq = ∃ fr : ℝ → ℝ, (∀ x : Set.Ioi (0 : ℝ), fr x = f x) ∧ (∀ x y : Set.Ioi (0 : ℝ), fr (x * fr y) + fr (y * fr x) = 1 + fr (x + y)))
: (Continuous f ∧ eq) ↔ f ∈ putnam_2022_b6_solution := sorry


end putnam_2022

section putnam_2021
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

theorem putnam_2021_b4
(F : ℕ → ℕ)
(hF : ∀ x, x ≥ 2 → F x = F (x - 1) + F (x - 2))
(F01 : F 0 = 0 ∧ F 1 = 1)
: ∀ m, m > 2 → (∃ p,  (∏ k : Set.Icc 1 (F m - 1),  (k.1 ^ k.1))  % F m = F p) :=
sorry

end putnam_2021

section putnam_2020

abbrev putnam_2020_a1_solution : ℕ := sorry
-- 508536
theorem putnam_2020_a1
: Set.ncard {x : ℕ | (2020 ∣ x) ∧ (Nat.log 10 x) + 1 ≤ 2020 ∧ (∃ k l, k ≥ l ∧ x = ∑ i in Finset.range (k-l+1), 10 ^ (i+l))} = putnam_2020_a1_solution :=
sorry

abbrev putnam_2020_a2_solution : ℕ → ℕ := sorry
-- fun k ↦ 4 ^ k
theorem putnam_2020_a2
(k : ℕ)
: (∑ j in Finset.Icc 0 k, 2 ^ (k - j) * Nat.choose (k + j) j = putnam_2020_a2_solution k) :=
sorry

open Filter Topology Set

abbrev putnam_2020_a3_solution : Prop := sorry
-- False
theorem putnam_2020_a3
(a : ℕ → ℝ)
(ha0 : a 0 = Real.pi / 2)
(ha : ∀ n : ℕ, n ≥ 1 → a n = Real.sin (a (n - 1)))
: (∃ L : ℝ, Tendsto (fun m : ℕ => ∑ n : Icc 1 m, (a n)^2) atTop (𝓝 L)) ↔ putnam_2020_a3_solution :=
sorry

abbrev putnam_2020_a5_solution : ℤ := sorry
-- (Nat.fib 4040) - 1
theorem putnam_2020_a5
(a : ℤ → ℕ := fun n : ℤ => {S : Finset ℕ | (∀ k ∈ S, k > 0) ∧ ∑ k : S, Nat.fib k = n}.ncard)
: a putnam_2020_a5_solution = 2020 ∧ ∀ n : ℤ, a n = 2020 → n ≤ putnam_2020_a5_solution :=
sorry

noncomputable abbrev putnam_2020_a6_solution : ℝ := sorry
-- Real.pi / 4
theorem putnam_2020_a6
(f : ℤ → (ℝ → ℝ) := fun N : ℤ => fun x : ℝ =>
∑ n in Finset.Icc 0 N, (N + 1/2 - n)/((N + 1)*(2*n + 1)) * Real.sin ((2*n + 1)*x))
: (∀ N > 0, ∀ x : ℝ, f N x ≤ putnam_2020_a6_solution) ∧
∀ M : ℝ, (∀ N > 0, ∀ x : ℝ, f N x ≤ M) → M ≥ putnam_2020_a6_solution :=
sorry

abbrev putnam_2020_b1_solution : ℕ := sorry
-- 1990
theorem putnam_2020_b1
(d : ℕ → ℕ := fun n : ℕ => ∑ i : Fin (Nat.digits 2 n).length, (Nat.digits 2 n)[i]!)
(S : ℤ := ∑ k : Icc 1 2020, ((-1)^(d k))*(k : ℕ)^3)
: S % 2020 = putnam_2020_b1_solution :=
sorry

open Set
noncomputable abbrev putnam_2020_b4_solution : ℝ := sorry
-- 1 / 4040
theorem putnam_2020_b4
(V : ℕ → Set (ℕ → ℤ) := fun n ↦ ({s : ℕ → ℤ | s 0 = 0 ∧ (∀ j ≥ 2 * n, s j = 0) ∧ (∀ j ∈ Icc 1 (2 * n), |s j - s (j - 1)| = 1)}))
(q : ℕ → (ℕ → ℤ) → ℝ := fun n s ↦ 1 + ∑ j in Finset.Icc 1 (2 * n - 1), 3 ^ (s j))
(M : ℕ → ℝ := fun n ↦ (∑' v : V n, 1 / (q n v)) / (V n).ncard)
: (M 2020 = putnam_2020_b4_solution) :=
sorry


theorem putnam_2020_b5
(z : Fin 4 → ℂ)
(hzle1 : ∀ n, ‖z n‖ < 1)
(hzne1 : ∀ n, z n ≠ 1)
: 3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0:=
sorry

theorem putnam_2020_b6
(n : ℕ)
(npos : n > 0)
: ∑ k : Fin n, ((-1) ^ Int.floor ((k.1 + 1) * (Real.sqrt 2 - 1)) : ℝ) ≥ 0 :=
sorry


end putnam_2020

section putnam_2019

abbrev putnam_2019_a1_solution : Set ℤ := sorry
-- {n : ℤ | n ≥ 0 ∧ ¬Int.ModEq 9 n 3 ∧ ¬Int.ModEq 9 n 6}
theorem putnam_2019_a1
: {n : ℤ | ∃ A ≥ 0, ∃ B ≥ 0, ∃ C ≥ 0, A^3 + B^3 + C^3 - 3*A*B*C = n} = putnam_2019_a1_solution :=
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

end putnam_2019

section putnam_2018

abbrev putnam_2018_a1_solution : Set (ℕ × ℕ) := sorry
-- {⟨673, 1358114⟩, ⟨674, 340033⟩, ⟨1009, 2018⟩, ⟨2018, 1009⟩, ⟨340033, 674⟩, ⟨1358114, 673⟩}
theorem putnam_2018_a1 : ∀ a b : ℕ, (a > 0 ∧ b > 0 ∧ ((1: ℚ) / a + (1: ℚ) / b = (3: ℚ) / 2018)) ↔ (⟨a, b⟩ ∈ putnam_2018_a1_solution) :=
sorry

noncomputable abbrev putnam_2018_a3_solution : ℝ := sorry
-- 480/49
theorem putnam_2018_a3
(P : Set (Fin 10 → ℝ))
(f : (Fin 10 → ℝ) → ℝ → ℝ := fun x => fun k => ∑ i : Fin 10, Real.cos (k * (x i)))
(hP : ∀ x ∈ P, f x 1 = 0)
: ∀ y ∈ P, f y 3 ≤ putnam_2018_a3_solution ∧ ∃ x ∈ P, f x 3 = putnam_2018_a3_solution :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Set.Icc 1 n → ℕ)
theorem putnam_2018_a4
(m n : ℕ)
(a : ℕ → ℕ)
(G : Type*) [Group G]
(g h : G)
(mnpos : m > 0 ∧ n > 0)
(mngcd : Nat.gcd m n = 1)
(ha : ∀ k : Set.Icc 1 n, a k = Nat.floor (m * k / n) - Nat.floor (m * (k - 1) / n))
(ghprod : ((List.Ico 1 (n + 1)).map (fun k : ℕ => g * h ^ (a k))).prod = 1)
: g * h = h * g :=
sorry

theorem putnam_2018_a5
(f : ℝ → ℝ)
(h0 : f 0 = 0)
(h1 : f 1 = 1)
(hpos : ∀ x : ℝ, f x ≥ 0)
(hf : ContDiff ℝ ⊤ f)
: ∃ n > 0, ∃ x : ℝ, iteratedDeriv n f x < 0 :=
sorry

abbrev putnam_2018_b1_solution : Set (Vector ℤ 2) := sorry
-- {v : Vector ℤ 2 | ∃ b : ℤ, 0 ≤ b ∧ b ≤ 100 ∧ Even b ∧ v.toList = [1, b]}
theorem putnam_2018_b1
(P : Finset (Vector ℤ 2))
(v : Vector ℤ 2)
(vinP : Prop)
(Pvdiff : Finset (Vector ℤ 2))
(Pvpart : Prop)
(hP : P = {v' : Vector ℤ 2 | 0 ≤ v'[0] ∧ v'[0] ≤ 2 ∧ 0 ≤ v'[1] ∧ v'[1] ≤ 100})
(hvinP : vinP = (v ∈ P))
(hPvdiff : Pvdiff = P \ ({v} : Finset (Vector ℤ 2)))
(hPvpart : Pvpart = (∃ Q R : Finset (Vector ℤ 2), (Q ∪ R = Pvdiff) ∧ (Q ∩ R = ∅) ∧ (Q.card = R.card) ∧ (∑ q in Q, q[0] = ∑ r in R, r[0]) ∧ (∑ q in Q, q[1] = ∑ r in R, r[1])))
: (vinP ∧ Pvpart) ↔ v ∈ putnam_2018_b1_solution :=
sorry

theorem putnam_2018_b2
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℂ → ℂ)
(hf : ∀ z : ℂ, f n z = ∑ i in Finset.range n, (n - i) * z^i)
: ∀ z : ℂ, ‖z‖ ≤ 1 → f n z ≠ 0 :=
sorry

abbrev putnam_2018_b3_solution : Set ℕ := sorry
-- {2^2, 2^4, 2^8, 2^16}
theorem putnam_2018_b3
(n : ℕ)
(hn : n > 0)
: ((n < 10^100 ∧ (n ∣ 2^n ∧ (n - 1) ∣ 2^n - 1 ∧ (n - 2) ∣ 2^n - 2)) ↔ n ∈ putnam_2018_b3_solution) :=
sorry

theorem putnam_2018_b4
(a : ℝ)
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hx12 : x 1 = a ∧ x 2 = a)
(hxn : ∀ n ≥ 2, x (n + 1) = 2 * (x n) * (x (n - 1)) - x (n - 2))
: (∃ n, x n = 0) → (∃ c, c > 0 ∧ Function.Periodic x c) :=
sorry

theorem putnam_2018_b6
(S : Finset (Fin 2018 → ℕ))
(hS : S = {s : Fin 2018 → ℕ | (∀ i : Fin 2018, s i ∈ ({1, 2, 3, 4, 5, 6, 10} : Set ℕ)) ∧ (∑ i : Fin 2018, s i) = 3860})
: S.card ≤ 2 ^ 3860 * ((2018 : ℝ) / 2048) ^ 2018 :=
sorry

end putnam_2018

section putnam_2017

abbrev putnam_2017_a1_solution : Set ℤ := sorry
-- {x : ℤ | x > 0 ∧ (x = 1 ∨ 5 ∣ x)}
theorem putnam_2017_a1
(Q : Set (Set ℤ))
(Spos : ∀ S ∈ Q, ∀ x ∈ S, x > 0)
(S2 : ∀ S ∈ Q, 2 ∈ S)
(Sn : ∀ S ∈ Q, ∀ n, n ^ 2 ∈ S → n ∈ S)
(Sn5 : ∀ S ∈ Q, ∀ n, n ∈ S → (n+5) ^ 2 ∈ S)
: Set.univ \ (⋂ T ∈ Q, T) = putnam_2017_a1_solution :=
sorry

theorem putnam_2017_a2
(Q : ℕ → ℝ → ℝ)
(hQbase : ∀ x : ℝ, Q 0 x = 1 ∧ Q 1 x = x)
(hQn : ∀ n ≥ 2, ∀ x : ℝ, Q n x = ((Q (n - 1) x) ^ 2 - 1) / Q (n - 2) x)
: ∀ n > 0, ∃ P : Polynomial ℝ, (∀ i : ℕ, P.coeff i = round (P.coeff i)) ∧ Q n = P.eval :=
sorry

open Topology Filter
-- Note: uses (ℝ → ℝ) instead of (Set.Icc a b → Set.Ioi (0 : ℝ))
theorem putnam_2017_a3
(a b : ℝ)
(f g : ℝ → ℝ)
(I : ℕ → ℝ)
(altb : a < b)
(fgcont : ContinuousOn f (Set.Icc a b) ∧ ContinuousOn g (Set.Icc a b))
(fgimg : f '' (Set.Icc a b) ⊆ Set.Ioi 0 ∧ g '' (Set.Icc a b) ⊆ Set.Ioi 0)
(fgint : ∫ x in Set.Ioo a b, f x = ∫ x in Set.Ioo a b, g x)
(fneg : ∃ x : Set.Icc a b, f x ≠ g x)
(hI : ∀ n > 0, I n = ∫ x in Set.Ioo a b, ((f x) ^ (n + 1)) / ((g x) ^ n))
: (∀ n > 0, I (n + 1) > I n) ∧ Tendsto I atTop atTop :=
sorry

theorem putnam_2017_a4
(N : ℕ)
(score : Fin (2 * N) → Fin 11)
(hsurj : ∀ k : Fin 11, ∃ i : Fin (2 * N), score i = k)
(havg : (∑ i : Fin (2 * N), (score i : ℝ)) / (2 * N) = 7.4)
: (∃ s : Finset (Fin (2 * N)), s.card = N ∧ (∑ i in s, (score i : ℝ)) / N = 7.4 ∧ (∑ i in sᶜ, (score i : ℝ)) / N = 7.4) :=
sorry

theorem putnam_2017_b1
(lines : Set (Set (Fin 2 → ℝ)) := {L : Set (Fin 2 → ℝ) | ∃ v w : Fin 2 → ℝ, w ≠ 0 ∧ L = {p : Fin 2 → ℝ | ∃ t : ℝ, p = v + t • w}})
(L1 L2 : Set (Fin 2 → ℝ))
(L1L2lines : L1 ∈ lines ∧ L2 ∈ lines)
(L1L2distinct : L1 ≠ L2)
: L1 ∩ L2 ≠ ∅ ↔ (∀ lambda : ℝ, lambda ≠ 0 → ∀ P : Fin 2 → ℝ, (P ∉ L1 ∧ P ∉ L2) → ∃ A1 A2 : Fin 2 → ℝ, A1 ∈ L1 ∧ A2 ∈ L2 ∧ (A2 - P = lambda • (A1 - P))) :=
sorry

abbrev putnam_2017_b2_solution : ℕ := sorry
-- 16
theorem putnam_2017_b2
(mina : ℕ)
(S : ℕ → ℕ → ℕ := fun a k ↦ ∑ i : Fin k, a + i)
(p : ℕ → ℕ → Prop := fun N k ↦ ∃ a > 0, S a k = N)
(q : ℕ → Prop := fun N ↦ p N 2017 ∧ ∀ k : ℕ, k > 1 → k ≠ 2017 → ¬p N k)
(hqmina : q (S mina 2017))
(hminalb : ∀ a > 0, q (S a 2017) → mina ≤ a)
: (mina = putnam_2017_b2_solution) :=
sorry

theorem putnam_2017_b3
(f : ℝ → ℝ)
(c : ℕ → ℝ)
(hc : ∀ n, c n = 0 ∨ c n = 1)
(hf : ∀ x, f x = ∑' n : ℕ, (c n) * x^n)
: f (2/3) = 3/2 → Irrational (f 1/2) :=
sorry

open Real
noncomputable abbrev putnam_2017_b4_solution : ℝ := sorry
-- (log 2) ^ 2
theorem putnam_2017_b4
: (∑' k : ℕ, 3 * log (4 * k + 2) / (4 * k + 2) - log (4 * k + 3) / (4 * k + 3) - log (4 * k + 4) / (4 * k + 4) - log (4 * k + 5) / (4 * k + 5) = putnam_2017_b4_solution) :=
sorry

open Function
abbrev putnam_2017_b6_solution : ℕ := sorry
-- 2016! / 1953! - 63! * 2016
theorem putnam_2017_b6
(S : Finset (Finset.range 64 → Finset.Icc 1 2017))
(hs : ∀ x : (Finset.range 64 → Finset.Icc 1 2017), x ∈ S ↔ (Injective x ∧ (2017 ∣ (x 0 + ∑ i : Finset.range 64, i * (x i : ℕ)))))
: (S.card = putnam_2017_b6_solution) :=
sorry

end putnam_2017

section putnam_2016
open Polynomial Filter Topology Real Set Polynomial
-- TODO: Does this formalderivative evaluation work?
abbrev putnam_2016_a1_solution : ℕ := sorry
-- 8
theorem putnam_2016_a1
: (∀ P : ℤ[X], ∀ j : ℕ+, ∀ k : ℤ, 2016 ∣ (derivative^[j] P).eval k → j ≥ putnam_2016_a1_solution) ∧ (∃ P : ℤ[X], ∀ k : ℤ, 2016 ∣ (derivative^[putnam_2016_a1_solution] P).eval k) :=
sorry

noncomputable abbrev putnam_2016_a2_solution : ℝ := sorry
-- (3 + sqrt 5) / 2
theorem putnam_2016_a2
(p : ℕ → ℕ → Prop := fun n ↦ fun m ↦ Nat.choose m (n - 1) > Nat.choose (m - 1) n)
(M : ℕ → ℕ)
(hpM : ∀ n : ℕ, p n (M n))
(hMub : ∀ n : ℕ, ∀ m : ℕ, p n m → m ≤ M n)
: (Tendsto (fun n ↦ ((M n : ℝ) / (n : ℝ))) ⊤ (𝓝 putnam_2016_a2_solution)) :=
sorry

open Real
noncomputable abbrev putnam_2016_a3_solution : ℝ := sorry
-- 3 * Real.pi / 8
theorem putnam_2016_a3
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, x ≠ 0 → f x + f (1 - 1 / x) = arctan x)
: (∫ x in (0)..1, f x = putnam_2016_a3_solution) :=
sorry

open List

theorem putnam_2016_a5
(G : Type*) [Group G]
(Gfin : Fintype G)
(g h : G)
(ghgen : Group.closure {g, h} = G ∧ ¬Group.closure {g} = G ∧ ¬Group.closure {h} = G)
(godd : Odd (orderOf g))
(S : Set G := {g * h, g⁻¹ * h, g * h⁻¹, g⁻¹ * h⁻¹})
: (∀ x : G, ∃ mn : List G, 1 ≤ mn.length ∧ mn.length ≤ Gfin.card ∧ ∀ i : Fin mn.length, mn.get i ∈ S ∧ x = List.prod mn) :=
sorry

noncomputable abbrev putnam_2016_a6_solution : ℝ := sorry
-- 5 / 6
theorem putnam_2016_a6
(C : ℝ)
(max : Polynomial ℝ → ℝ)
(hmax : ∀ P : Polynomial ℝ, ∃ x ∈ Icc 0 1, |P.eval x| = max P)
(hmaxub : ∀ P : Polynomial ℝ, ∀ x ∈ Icc 0 1, |P.eval x| ≤ max P)
(p : ℝ → Prop := fun c ↦ ∀ P : Polynomial ℝ, P.degree = 3 → (∃ x ∈ Icc 0 1, P.eval x = 0) → ∫ x in (0)..1, |P.eval x| ≤ C * max P)
(hpC : p C)
(hClb : ∀ c : ℝ, p c → C ≤ c)
: (C = putnam_2016_a6_solution) :=
sorry

noncomputable abbrev putnam_2016_b1_solution : ℝ := sorry
-- exp 1 - 1
theorem putnam_2016_b1
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hxn : ∀ n : ℕ, x (n + 1) = log (exp (x n) - (x n)))
: (∑' n : ℕ, x n = putnam_2016_b1_solution) :=
sorry

open Filter Topology

noncomputable abbrev putnam_2016_b2_solution : ℝ × ℝ := sorry
-- (3 / 4, 4 / 3)
theorem putnam_2016_b2
(squarish : ℤ → Prop := fun n ↦ IsSquare n ∨ ∃ w : ℤ, IsSquare |n - w ^ 2| ∧ ∀ v : ℕ, |n - w ^ 2| ≤ |n - v ^ 2|)
(S : ℤ → ℕ := fun n ↦ {i ∈ Finset.Icc 1 n | squarish i}.ncard)
(p : ℝ → ℝ → Prop := fun α ↦ fun β ↦ α > 0 ∧ β > 0 ∧ Tendsto (fun N ↦ S N / (N : ℝ) ^ α) ⊤ (𝓝 β))
: ((∀ α β : ℝ, ((α, β) = putnam_2016_b2_solution ↔ p α β)) ∨ ¬∃ α β : ℝ, p α β) :=
sorry

abbrev putnam_2016_b5_solution : Set (Set.Ioi (1 : ℝ) → Set.Ioi (1 : ℝ)) := sorry
-- {f : Set.Ioi (1 : ℝ) → Set.Ioi (1 : ℝ) | ∃ c : ℝ, c > 0 ∧ ∀ x : Set.Ioi (1 : ℝ), (f x : ℝ) = x ^ c}
theorem putnam_2016_b5
(f : Set.Ioi (1 : ℝ) → Set.Ioi (1 : ℝ))
(fle : Prop)
(hfle : fle = ∀ x y : Set.Ioi (1 : ℝ), ((x : ℝ) ^ 2 ≤ y ∧ y ≤ (x : ℝ) ^ 3) → ((f x : ℝ) ^ 2 ≤ f y ∧ f y ≤ (f x : ℝ) ^ 3))
: fle ↔ f ∈ putnam_2016_b5_solution := sorry


abbrev putnam_2016_b6_solution : ℝ := sorry
-- 1
theorem putnam_2016_b6
: ∑' k : ℕ, ((-1 : ℝ) ^ ((k + 1) - 1) / (k + 1)) * ∑' n : ℕ, (1 : ℝ) / ((k + 1) * (2 ^ n) + 1) = putnam_2016_b6_solution :=
sorry

end putnam_2016

section putnam_2015

-- there are several possible correct solutions; this is the one shown on the solutions document
abbrev putnam_2015_a2_solution : ℕ := sorry
-- 181
theorem putnam_2015_a2
(a : ℕ → ℕ)
(abase : a 0 = 1 ∧ a 1 = 2)
(arec : ∀ n ≥ 2, a n = 4 * a (n - 1) - a (n - 2))
: Odd putnam_2015_a2_solution ∧ putnam_2015_a2_solution.Prime ∧ (putnam_2015_a2_solution ∣ a 2015) :=
sorry

abbrev putnam_2015_a3_solution : ℂ := sorry
-- 13725
theorem putnam_2015_a3
: Complex.log (∏ a : Fin 2015, ∏ b : Fin 2015, (1 + Complex.exp (2 * Real.pi * Complex.I * (a.1 + 1) * (b.1 + 1) / 2015))) / Complex.log 2 = putnam_2015_a3_solution :=
sorry

noncomputable abbrev putnam_2015_a4_solution : ℝ := sorry
-- 4 / 7
theorem putnam_2015_a4
(S : ℝ → Set ℕ := fun x ↦ {n : ℕ | n > 0 ∧ Even ⌊n * x⌋})
(f : ℝ → ℝ := fun x ↦ ∑' n : S x, 1 / 2 ^ (n : ℕ))
(p : ℝ → Prop := fun l ↦ ∀ x ∈ Set.Ico 0 1, f x ≥ l)
(L : ℝ)
(hpL : p L)
(hLub : ∀ l : ℝ, p l → l ≤ L)
: (L = putnam_2015_a4_solution) :=
sorry

theorem putnam_2015_a5
(q : ℕ)
(Nq : ℕ)
(qodd : Odd q)
(qpos : q > 0)
(hNq : Nq = {a : ℕ | 0 < a ∧ a < (q : ℝ) / 4 ∧ Nat.gcd a q = 1}.encard)
: Odd Nq ↔ ∃ p k : ℕ, q = p ^ k ∧ k > 0 ∧ p.Prime ∧ (p % 8 = 5 ∨ p % 8 = 7) :=
sorry


theorem putnam_2015_a6
(n : ℕ)
(A B M : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hmul : A * M = M * B)
(hpoly : Matrix.charpoly A = Matrix.charpoly B)
: ∀ X : Matrix (Fin n) (Fin n) ℝ, (A - M * X).det = (B - X * M).det :=
sorry

theorem putnam_2015_b1
(f : ℝ → ℝ)
(nzeros : (ℝ → ℝ) → ℕ → Prop)
(fdiff : ContDiff ℝ 2 f ∧ Differentiable ℝ (iteratedDeriv 2 f))
(hnzeros : ∀ f' : ℝ → ℝ, ∀ n : ℕ, nzeros f' n = ({x : ℝ | f' x = 0}.encard ≥ n))
(fzeros : nzeros f 5)
: nzeros (f + 6 * deriv f + 12 * iteratedDeriv 2 f + 8 * iteratedDeriv 3 f) 2 :=
sorry

abbrev putnam_2015_b3_solution : Set (Matrix (Fin 2) (Fin 2) ℝ) := sorry
-- {A : Matrix (Fin 2) (Fin 2) ℝ | (∃ α : ℝ, ∀ i j : Fin 2, A i j = α * 1) ∨ (∃ β : ℝ, A 0 0 = β * -3 ∧ A 0 1 = β * -1 ∧ A 1 0 = β * 1 ∧ A 1 1 = β * 3)}
theorem putnam_2015_b3
(S : Set (Matrix (Fin 2) (Fin 2) ℝ))
(M : Matrix (Fin 2) (Fin 2) ℝ)
(MinS : Prop)
(hS : S = {M' : Matrix (Fin 2) (Fin 2) ℝ | (M' 0 1 - M' 0 0 = M' 1 0 - M' 0 1) ∧ (M' 0 1 - M' 0 0 = M' 1 1 - M' 1 0)})
(hMinS : MinS = (M ∈ S ∧ (∃ k > 1, M ^ k ∈ S)))
: MinS ↔ M ∈ putnam_2015_b3_solution :=
sorry

abbrev putnam_2015_b4_solution : ℤ × ℕ := sorry
-- (17, 21)
theorem putnam_2015_b4
(quotientof : ℚ → (ℤ × ℕ))
(hquotientof : ∀ q : ℚ, quotientof q = (q.num, q.den))
: quotientof (∑' t : (Fin 3 → ℕ), if (∀ n : Fin 3, t n > 0) ∧ t 0 < t 1 + t 2 ∧ t 1 < t 2 + t 0 ∧ t 2 < t 0 + t 1
then 2^(t 0)/(3^(t 1)*5^(t 2)) else 0) = putnam_2015_b4_solution :=
sorry


open Function

abbrev putnam_2015_b5_solution : ℕ := sorry
-- 4
theorem putnam_2015_b5
(P : ℕ → ℕ := fun n ↦ {pi : Finset.Icc 1 n → Finset.Icc 1 n | Bijective pi ∧ ∀ i j : Finset.Icc 1 n, Nat.dist i j = 1 → Nat.dist (pi i) (pi j) ≤ 2}.ncard)
: (∀ n : ℕ, n ≥ 2 → P (n + 5) - P (n + 4) - P (n + 3) + P n = putnam_2015_b5_solution) :=
sorry

noncomputable abbrev putnam_2015_b6_solution : ℝ := sorry
-- Real.pi ^ 2 / 16
theorem putnam_2015_b6
(A : ℕ → ℕ)
(hA : ∀ k > 0, A k = {j : ℕ | Odd j ∧ j ∣ k ∧ j < Real.sqrt (2 * k)}.encard)
: ∑' k : Set.Ici 1, (-1 : ℝ) ^ ((k : ℝ) - 1) * (A k / (k : ℝ)) = putnam_2015_b6_solution :=
sorry

end putnam_2015

section putnam_2014

theorem putnam_2014_a1
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = (1 - x + x ^ 2) * Real.exp x)
(hfdiff : ContDiff ℝ ⊤ f)
(c : ℕ → ℝ)
(hc : ∀ k : ℕ, c k = taylorCoeffWithin f k Set.univ 0)
: ∀ k : ℕ, c k ≠ 0 → ∃ q : Rat, c k = q ∧ (q.num = 1 ∨ Prime q.num.natAbs) :=
sorry

abbrev putnam_2014_a2_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => (-1) ^ (n - 1) / ((n - 1)! * (n)!))
theorem putnam_2014_a2
(n : ℕ)
(A : Matrix (Fin n) (Fin n) ℝ)
(npos : n > 0)
(hA : ∀ i j : Fin n, A i j = 1 / min (i.1 + 1) (j.1 + 1))
: A.det = putnam_2014_a2_solution n :=
sorry

theorem putnam_2014_a5
(P : ℕ → Polynomial ℂ)
(hP : ∀ n, P n = ∑ i in Finset.Icc 1 n, i * Polynomial.X ^ (i - 1))
: ∀ (j k : ℕ), (j > 0 ∧ k > 0) → j ≠ k → IsCoprime (P j) (P k) :=
sorry

open Nat

abbrev putnam_2014_b1_solution : Set ℕ := sorry
-- {n : ℕ | n > 0 ∧ ¬∃ a ∈ digits 10 n, a = 0}
theorem putnam_2014_b1
(overexpansion : ℕ → List ℕ → Prop := fun N d ↦ N = ∑ i : Fin d.length, (d.get i) * 10 ^ i.1 ∧ d.getLastI ≠ 0 ∧ ∀ a ∈ d, a ∈ Finset.range 11)
(S : Set ℕ)
(hS : ∀ N : ℕ, N ∈ S ↔ N > 0 ∧ ∃! d : List ℕ, overexpansion N d)
: (S = putnam_2014_b1_solution) :=
sorry

theorem putnam_2014_b3
(m n : ℕ)
(A : Matrix (Fin m) (Fin n) ℚ)
(mnpos : m > 0 ∧ n > 0)
(Aprime : {p : ℕ | p.Prime ∧ ∃ (i : Fin m) (j : Fin n), |A i j| = p}.encard ≥ m + n)
: A.rank ≥ 2 :=
sorry

open Set Interval
theorem putnam_2014_b6
(f : ℝ → ℝ)
(hlip : ∃ K > 0, ∀ x ∈ Icc 0 1, ∀ y ∈ Icc 0 1, |f x - f y| ≤ K * |x - y|)
(hrat : ∀ r ∈ Icc (0 : ℚ) 1, ∃ a b : ℤ, f r = a + b * r)
: (∃ I : Finset (Interval ℝ), (∀ Ii ∈ I, ∃ m c : ℝ, ∀ x ∈ coeHom Ii, f x = c + m * x) ∧ Icc 0 1 = ⋃ Ii ∈ I, coeHom Ii) :=
sorry

end putnam_2014

section putnam_2013
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


end putnam_2013

section putnam_2012
open Matrix

theorem putnam_2012_a2
(S : Type*) [CommSemigroup S]
(a b c : S)
(hS : ∀ x y : S, ∃ z : S, x * z = y)
(habc : a * c = b * c)
: a = b :=
sorry

open Function

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (-1 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_2012_a3_solution : ℝ → ℝ := sorry
-- fun x : ℝ => Real.sqrt (1 - x^2)
theorem putnam_2012_a3
(S : Set ℝ := Set.Icc (-1 : ℝ) 1)
(hf : (ℝ → ℝ) → Prop := fun f : ℝ → ℝ => ContinuousOn f S ∧
(∀ x ∈ S, f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) ∧ f 0 = 1 ∧
(∃ y : ℝ, leftLim (fun x : ℝ => (f x)/Real.sqrt (1 - x)) 1 = y))
: hf putnam_2012_a3_solution ∧ ∀ f : ℝ → ℝ, hf f → ∀ x ∈ S, f x = putnam_2012_a3_solution x :=
sorry


theorem putnam_2012_a4
(q r : ℤ)
(A B : Fin 2 → ℝ)
(T : Set ℝ)
(S : Set ℤ)
(qpos : q > 0)
(ABlt : A 0 < A 1 ∧ B 0 < B 1)
(hT : T = {x : ℝ | ∃ b m : ℤ, ((b : ℝ) ∈ Set.Icc (B 0) (B 1)) ∧ (x = b + m * q)})
(hS : S = {a : ℤ | ((a : ℝ) ∈ Set.Icc (A 0) (A 1)) ∧ (∃ t ∈ T, r * a = t)})
: ((A 1 - A 0) * (B 1 - B 0) < q) → (∃ n > 2, ∃ a1 d : ℝ, {s : ℝ | s = round s ∧ round s ∈ S} = (Set.Icc (A 0) (A 1)) ∩ {x : ℝ | ∃ i : Fin n, x = a1 + i * d}) :=
sorry

abbrev putnam_2012_a5_solution : Set (ℕ × ℕ) := sorry
-- {q | let ⟨n, _⟩ := q; n = 1} ∪ {(2,2)}
theorem putnam_2012_a5
(n p : ℕ)
(hn : n > 0)
(hp : Nat.Prime p)
{F : Type*} [Field F] [Fintype F]
(hK : Fintype.card F = p)
(G : Matrix (Fin n) (Fin n) F →  (Fin n → F) → (Fin n → F) → (Fin n → F))
(hG : ∀ M : Matrix (Fin n) (Fin n) F, ∀ v x : (Fin n → F), G M v x = v + mulVec M x)
: (n, p) ∈ putnam_2012_a5_solution ↔
∃ M : Matrix (Fin n) (Fin n) F,
∃ v : (Fin n → F),
¬(∃ i j : Finset.range (p^n), i ≠ j ∧ (G M v)^[i + 1] 0 = (G M v)^[j + 1] 0) :=
sorry

-- Note: this formalization differs from the original problem wording in only allowing axis-aligned rectangles. The problem is solvable given this weaker hypothesis.
abbrev putnam_2012_a6_solution : Prop := sorry
-- True
theorem putnam_2012_a6
(p : ((ℝ × ℝ) → ℝ) → Prop := fun f ↦ Continuous f ∧ ∀ x1 x2 y1 y2 : ℝ, x2 > x1 → y2 > y1 → (x2 - x1) * (y2 - y1) = 1 → ∫ x in x1..x2, ∫ y in y1..y2, f (x, y) = 0)
: ((∀ f : (ℝ × ℝ) → ℝ, ∀ x y : ℝ, p f → f (x, y) = 0) ↔ putnam_2012_a6_solution) :=
sorry

open Real
theorem putnam_2012_b1
(nneg : Set ℝ := Set.Ici 0)
(S : Set (nneg → ℝ))
(rngS : ∀ f ∈ S, ∀ x : nneg, f x ∈ nneg)
(f1 : nneg → ℝ := fun x ↦ exp x - 1)
(f2 : nneg → ℝ := fun x ↦ Real.log (x + 1))
(hf1 : f1 ∈ S)
(hf2 : f2 ∈ S)
(hsum : ∀ f ∈ S, ∀ g ∈ S, (fun x ↦ (f x) + (g x)) ∈ S)
(hcomp : ∀ f ∈ S, ∀ g ∈ S, ∀ gnneg : nneg → nneg, ((∀ x : nneg, g x = gnneg x) → (fun x ↦ f (gnneg x)) ∈ S))
(hdiff : ∀ f ∈ S, ∀ g ∈ S, (∀ x : nneg, f x ≥ g x) → (fun x ↦ (f x) - (g x)) ∈ S)
: (∀ f ∈ S, ∀ g ∈ S, (fun x ↦ (f x) * (g x)) ∈ S) :=
sorry

open Real Topology Filter
noncomputable abbrev putnam_2012_b4_solution : Prop := True
-- True
theorem putnam_2012_b4
(a : ℕ → ℝ)
(ha0 : a 0 = 1)
(han : ∀ n : ℕ, a (n + 1) = a n + exp (-a n))
: ((∃ L : ℝ, Tendsto (fun n ↦ a n - Real.log n) ⊤ (𝓝 L)) ↔ putnam_2012_b4_solution) :=
sorry

theorem putnam_2012_b5
(g1 g2 : ℝ → ℝ)
(hgim : ∀ x : ℝ, g1 x ≥ 1 ∧ g2 x ≥ 1)
(hgbd : ∃ B1 B2 : ℝ, ∀ x : ℝ, g1 x ≤ B1 ∧ g2 x ≤ B2)
: ∃ h1 h2 : ℝ → ℝ, ∀ x : ℝ, sSup {((g1 s)^x * (g2 s)) | s : ℝ} = sSup {(x * (h1 t) + h2 t) | t : ℝ} :=
sorry

theorem putnam_2012_b6
(p : ℕ)
(hpodd : Odd p)
(hpprime : Nat.Prime p)
(hpmod3 : p ≡ 2 [MOD 3])
(P : Equiv.Perm (Fin p))
(hP : ∀ i : Fin p, P i = (i * i * i))
: Equiv.Perm.signAux P = 1 ↔ (p ≡ 3 [MOD 4]) :=
sorry

end putnam_2012

section putnam_2011

open Topology Filter
noncomputable abbrev putnam_2011_a2_solution : ℝ := sorry
-- 2/Real.pi
theorem putnam_2011_a2
(a b: ℕ → ℝ)
(habn : ∀ n : ℕ, a n > 0 ∧ b n > 0)
(hab1 : a 0 = 1 ∧ b 0 = 1)
(hb : ∀ n ≥ 1, b n = b (n-1) * a n - 2)
(hbnd : ∃ B : ℝ, ∀ n : ℕ, |b n| ≤ B)
: Tendsto (fun n => ∑ i : Fin n, 1/(∏ j : Fin (i : ℕ), (a j))) atTop (𝓝 putnam_2011_a2_solution) :=
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

theorem putnam_2011_b1
(h k : ℕ)
(hkpos : h > 0 ∧ k > 0)
: ∀ ε > 0, ∃ m n : ℕ, m > 0 ∧ n > 0 ∧ ε < |h * Real.sqrt m - k * Real.sqrt n| ∧ |h * Real.sqrt m - k * Real.sqrt n| < 2 * ε :=
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


end putnam_2011

section putnam_2010

noncomputable abbrev putnam_2010_a1_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => Nat.ceil ((n : ℝ) / 2))
theorem putnam_2010_a1
(n : ℕ)
(kboxes : ℕ → Prop)
(npos : n > 0)
(hkboxes : ∀ k : ℕ, kboxes k = (∃ boxes : Fin n → Fin k, ∀ i j : Fin k, (∑' x : boxes ⁻¹' {i}, (x : ℕ)) = (∑' x : boxes ⁻¹' {j}, (x : ℕ))))
: kboxes (putnam_2010_a1_solution n) ∧ (∀ k : ℕ, kboxes k → k ≤ putnam_2010_a1_solution n) :=
sorry

abbrev putnam_2010_a2_solution : Set (ℝ → ℝ) := sorry
-- {f : ℝ → ℝ | ∃ c d : ℝ, ∀ x : ℝ, f x = c*x + d}
theorem putnam_2010_a2
: {f : ℝ → ℝ | Differentiable ℝ f ∧
∀ x : ℝ, ∀ n : ℕ, n > 0 → deriv f x = (f (x + n) - f x)/n} = putnam_2010_a2_solution :=
sorry


theorem putnam_2010_a4
: ∀ n : ℕ, n > 0 → ¬Nat.Prime (10^10^10^n + 10^10^n + 10^n - 1) :=
sorry

theorem putnam_2010_a5
(G : Set (Fin 3 → ℝ))
(hGgrp : Group G)
(hGcross : ∀ a b : G, crossProduct a b = (a * b : Fin 3 → ℝ) ∨ crossProduct (a : Fin 3 → ℝ) b = 0)
: ∀ a b : G, crossProduct (a : Fin 3 → ℝ) b = 0 :=
sorry

open Filter Topology Set

-- Note: uses (ℝ → ℝ) instead of (Ici 0 → ℝ)
theorem putnam_2010_a6
(f : ℝ → ℝ)
(hf : (StrictAntiOn f (Ici 0) ∧ ContinuousOn f (Ici 0) ∧ Tendsto f atTop (𝓝 0)))
: ¬∃ y : ℝ, Tendsto (fun z : ℝ => ∫ x in Ico 0 z, ((f x) - f (x + 1))/(f x)) atTop (𝓝 y) :=
sorry


abbrev putnam_2010_b1_solution : Prop := sorry
-- False
theorem putnam_2010_b1 : (∃ a : ℕ → ℝ, ∀ m : ℕ, m > 0 → ∑' i : ℕ, (a i)^m = m) ↔ putnam_2010_b1_solution :=
sorry

abbrev putnam_2010_b2_solution : ℕ := sorry
-- 3
theorem putnam_2010_b2
(ABCintcoords : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (Fin 2 → ℝ) → Prop)
(ABCintdists : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (Fin 2 → ℝ) → Prop)
(ABCall : (Fin 2 → ℝ) → (Fin 2 → ℝ) → (Fin 2 → ℝ) → Prop)
(hABCintcoords : ∀ A B C : Fin 2 → ℝ, ABCintcoords A B C = (∀ i : Fin 2, A i = round (A i) ∧ B i = round (B i) ∧ C i = round (C i)))
(hABCintdists : ∀ A B C : Fin 2 → ℝ, ABCintdists A B C = (Euclidean.dist A B = round (Euclidean.dist A B) ∧ Euclidean.dist A C = round (Euclidean.dist A C) ∧ Euclidean.dist B C = round (Euclidean.dist B C)))
(hABCall : ∀ A B C : Fin 2 → ℝ, ABCall A B C = (¬Collinear ℝ {A, B, C} ∧ ABCintcoords A B C ∧ ABCintdists A B C))
: (∃ A B C : Fin 2 → ℝ, ABCall A B C ∧ Euclidean.dist A B = putnam_2010_b2_solution) ∧ (∀ A B C : Fin 2 → ℝ, ABCall A B C → Euclidean.dist A B ≥ putnam_2010_b2_solution) :=
sorry

abbrev putnam_2010_b4_solution : Set (Polynomial ℝ × Polynomial ℝ) := sorry
-- {(p, q) : Polynomial ℝ × Polynomial ℝ | p.degree ≤ 1 ∧ q.degree ≤ 1 ∧ p.coeff 0 * q.coeff 1 - p.coeff 1 * q.coeff 0 = 1}
theorem putnam_2010_b4
(p q : Polynomial ℝ)
: (∀ x : ℝ, p.eval x * q.eval (x + 1) - p.eval (x + 1) * q.eval x = 1) ↔ (p, q) ∈ putnam_2010_b4_solution :=
sorry

abbrev putnam_2010_b5_solution : Prop := sorry
-- False
theorem putnam_2010_b5 : (∃ f : ℝ → ℝ, StrictMono f → Differentiable ℝ f → (∀ x : ℝ, deriv f x = f (f x))) ↔ putnam_2010_b5_solution :=
sorry

theorem putnam_2010_b6
(n : ℕ)
(npos : n ≥ 1)
(A : Matrix (Fin n) (Fin n) ℝ)
(Apow : ℕ → Matrix (Fin n) (Fin n) ℝ)
(hApow : ∀ k > 0, Apow k = (fun i j : Fin n => (A i j) ^ k))
: (∀ k ∈ Set.Icc 1 (n + 1), A ^ k = Apow k) → (∀ k ≥ 1, A ^ k = Apow k) :=
sorry

end putnam_2010

section putnam_2009

open Topology MvPolynomial Filter

abbrev putnam_2009_a1_solution : Prop := sorry
-- True
theorem putnam_2009_a1
: ((∀ f : (ℝ × ℝ) → ℝ, (∀ O v : ℝ × ℝ, v ≠ (0, 0) → f (O.1, O.2) + f (O.1 + v.1, O.2 + v.2) + f (O.1 + v.1 - v.2, O.2 + v.2 + v.1) + f (O.1 - v.2, O.2 + v.1) = 0) → ∀ P : ℝ × ℝ, f P = 0) ↔ putnam_2009_a1_solution) :=
sorry

noncomputable def cos_matrix (n : ℕ) :  Matrix (Fin n) (Fin n) ℝ := λ i j => Real.cos ((1 : ℕ) + n * i + j)
abbrev putnam_2009_a3_solution : ℝ := sorry
-- 0
theorem putnam_2009_a3
(hM : ∀ n : ℕ, ∀ i j : Fin n, (cos_matrix n) i j = Real.cos ((1 : ℕ) + n * i + j))
: Tendsto (fun n => (cos_matrix n).det) atTop (𝓝 (putnam_2009_a3_solution)) :=
sorry

abbrev putnam_2009_a4_solution : Prop := sorry
-- False
theorem putnam_2009_a4
: ((∀ S : Set ℚ, 0 ∈ S → (∀ x ∈ S, x + 1 ∈ S ∧ x - 1 ∈ S) → (∀ x ∈ S, x ∉ ({0, 1} : Set ℚ) → 1 / (x * (x - 1)) ∈ S) → ∀ r : ℚ, r ∈ S) ↔ putnam_2009_a4_solution) :=
sorry

abbrev putnam_2009_a5_solution : Prop := sorry
-- False
theorem putnam_2009_a5
: (∃ (G : Type*) (_ : CommGroup G) (_ : Fintype G), ∏ g : G, orderOf g = 2^2009) ↔ putnam_2009_a5_solution :=
sorry

theorem putnam_2009_b1
(isquotprodprimefact : ℚ → Prop :=
fun q => (∃ (k m : ℕ) (a : Fin k → ℕ) (b : Fin m → ℕ),
(∀ i : Fin k, Nat.Prime (a i)) ∧ (∀ j : Fin m, Nat.Prime (b j))
∧ (q = (∏ i : Fin k, Nat.factorial (a i))/(∏ j : Fin m, Nat.factorial (b j)))
))
: ∀ q : ℚ, q > 0 → isquotprodprimefact q :=
sorry

open Set
abbrev putnam_2009_b3_solution : Set ℕ := sorry
-- {n : ℕ | ∃ k ≥ 1, n = 2 ^ k - 1}
theorem putnam_2009_b3
(mediocre : ℕ → Set ℕ → Prop := fun n S ↦ (S ⊆ Icc 1 n) ∧ ∀ a ∈ S, ∀ b ∈ S, 2 ∣ a + b → (a + b) / 2 ∈ S)
(A : ℕ → ℤ := fun n ↦ {S : Set ℕ | mediocre n S}.ncard)
: ({n : ℕ | n > 0 ∧ A (n + 2) - 2 * A (n + 1) + A n = 1} = putnam_2009_b3_solution) :=
sorry

open MvPolynomial Metric

abbrev putnam_2009_b4_solution : ℕ := sorry
-- 2020050
theorem putnam_2009_b4
(balanced : MvPolynomial (Fin 2) ℝ → Prop := fun P ↦ ∀ r > 0, (∫ x in Metric.sphere 0 r, MvPolynomial.eval x P) / (2 * Real.pi * r) = 0)
(V : Set (MvPolynomial (Fin 2) ℝ)) [AddCommGroup V] [Module ℝ V]
(hV : ∀ P : MvPolynomial (Fin 2) ℝ, P ∈ V ↔ balanced P ∧ P.totalDegree ≤ 2009)
: (Module.rank V = putnam_2009_b4_solution) :=
sorry

theorem putnam_2009_b5
(f : ℝ → ℝ)
(hfdiff : DifferentiableOn ℝ f (Ioi 1))
(hf : ∀ x > 1, deriv f x = (x ^ 2 - (f x) ^ 2) / ((x ^ 2) * ((f x) ^ 2 + 1)))
: (Tendsto f ⊤ ⊤) :=
sorry

theorem putnam_2009_b6
(n : ℕ)
(npos : n > 0)
: (∃ a : ℕ → ℤ, a 0 = 0 ∧ a 2009 = n ∧ ∀ i : Icc 1 2009, ((∃ j < i, ∃ k : ℕ, a i = a j + 2 ^ k) ∨ ∃ b < i, ∃ c < i, a b > 0 ∧ a c > 0 ∧ a i = (a b) % (a c))) :=
sorry

end putnam_2009

section putnam_2008

theorem putnam_2008_a1
(f : ℝ → ℝ → ℝ)
(hf : ∀ x y z : ℝ, f x y + f y z + f z x = 0)
: ∃ g : ℝ → ℝ, ∀ x y : ℝ, f x y = g x - g y :=
sorry


open Filter Topology
abbrev putnam_2008_a4_solution : Prop := sorry
-- False
theorem putnam_2008_a4
(f : ℝ → ℝ)
(hf : f = fun x => if x ≤ Real.exp 1 then x else x * (f (Real.log x)))
: (∃ r : ℝ, Tendsto (fun N : ℕ => ∑ n in Finset.range N, 1/(f (n + 1))) atTop (𝓝 r)) ↔ putnam_2008_a4_solution :=
sorry

theorem putnam_2008_a6
: (∃ c : ℝ, c > 0 ∧ ∀ G [Group G] (fing : Fintype G), fing.card > 1 → ∃ s : List G, s.length ≤ c * Real.log (fing.card : ℝ) ∧ ∀ g : G, ∃ t : List G, t.Sublist s ∧ t.prod = g) :=
sorry

abbrev putnam_2008_b1_solution : ℕ := sorry
-- 2
def is_rational_point (x y : ℝ) : Prop := ∃ (a b : ℚ), a = x ∧ b = y
def real_circle (a b r : ℝ) : Set (ℝ × ℝ) := {p | (p.1 - a)^2 + (p.2 - b)^2 = r^2}
theorem putnam_2008_b1 :
∀ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} ≥ putnam_2008_b1_solution)
∧ ∃ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} = putnam_2008_b1_solution) :=
sorry

open Nat Filter Topology
abbrev putnam_2008_b2_solution : ℝ := sorry
-- -1
theorem putnam_2008_b2
(F : ℕ → ℝ → ℝ)
(hF0 : ∀ x : ℝ, F 0 x = Real.log x)
(hFn : ∀ n : ℕ, ∀ x > 0, F (n + 1) x = ∫ t in Set.Ioo 0 x, F n t)
: Tendsto (fun n : ℕ => ((n)! * F n 1) / Real.log n) atTop (𝓝 putnam_2008_b2_solution) :=
sorry

theorem putnam_2008_b4
(p : ℕ)
(hp : Nat.Prime p)
(h : Polynomial ℤ)
(hh : ∀ i j : Finset.range (p ^ 2), h.eval i ≡ h.eval j [ZMOD p ^ 2] → i = j)
: (∀ i j : Finset.range (p ^ 3), h.eval i ≡ h.eval j [ZMOD p ^ 3] → i = j) :=
sorry

abbrev putnam_2008_b5_solution : Set (ℝ → ℝ) := sorry
-- {fun (x : ℝ) => x + n | n : ℤ} ∪ {fun (x : ℝ) => -x + n | n : ℤ}
theorem putnam_2008_b5
(fqsat : (ℝ → ℝ) → ℚ → Prop := fun f q => ContDiff ℝ 1 f ∧ (∃ p : ℚ, p = f q ∧ p.den = q.den))
(fsat : (ℝ → ℝ) → Prop := fun f => ∀ q : ℚ, fqsat f q)
: ∀ f : (ℝ → ℝ), fsat f ↔ f ∈ putnam_2008_b5_solution :=
sorry

def klimited (k n : ℕ) (s : Equiv.Perm (Fin n)) := ∀ i, |((s i) : ℤ) - i| ≤ k
theorem putnam_2008_b6
(n k : ℕ)
(hnk : n > 0 ∧ k > 0)
: Odd (Set.ncard {s : Equiv.Perm (Fin n) | klimited k n s}) ↔ (n ≡ 0 [MOD 2*k+1] ∨ n ≡ 1 [MOD 2*k+1]) :=
sorry

end putnam_2008

section putnam_2007

-- Note: Modified definition of tangent to handle this problem
abbrev putnam_2007_a1_solution : Set ℝ := sorry
-- {2/3, 3/2, (13 + Real.sqrt 601)/12, (13 - Real.sqrt 601)/12}
def reflect_tangent (f g : ℝ → ℝ) := ContDiff ℝ 1 f ∧ ContDiff ℝ 1 g ∧ (∃ x y : ℝ, f x = y ∧ g y = x ∧ (deriv f) x = 1 / (deriv g) y)
theorem putnam_2007_a1
: ∀ a : ℝ, reflect_tangent (fun x => a * x^2 + a * x + 1/24) (fun y => a * y^2 + a * y + 1/24) ↔ a ∈ putnam_2007_a1_solution :=
sorry

noncomputable abbrev putnam_2007_a2_solution : ENNReal := sorry
-- 4
theorem putnam_2007_a2
(Sinterpos : Set (Fin 2 → ℝ) → Prop)
(Sinterneg : Set (Fin 2 → ℝ) → Prop)
(Sconv : Set (Fin 2 → ℝ) → Prop)
(hSinterpos : ∀ S : Set (Fin 2 → ℝ), Sinterpos S = ((∃ p ∈ S, p 0 > 0 ∧ p 1 > 0 ∧ p 0 * p 1 = 1) ∧ (∃ p ∈ S, p 0 < 0 ∧ p 1 < 0 ∧ p 0 * p 1 = 1)))
(hSinterneg : ∀ S : Set (Fin 2 → ℝ), Sinterneg S = ((∃ p ∈ S, p 0 < 0 ∧ p 1 > 0 ∧ p 0 * p 1 = -1) ∧ (∃ p ∈ S, p 0 > 0 ∧ p 1 < 0 ∧ p 0 * p 1 = -1)))
(hSconv : ∀ S : Set (Fin 2 → ℝ), Sconv S = (Convex ℝ S ∧ Sinterpos S ∧ Sinterneg S))
: (∃ S : Set (Fin 2 → ℝ), Sconv S ∧ MeasureTheory.volume S = putnam_2007_a2_solution) ∧ (∀ S : Set (Fin 2 → ℝ), Sconv S → MeasureTheory.volume S ≥ putnam_2007_a2_solution) :=
sorry

open Nat
abbrev putnam_2007_a4_solution : Set (Polynomial ℝ) := sorry
-- {f : Polynomial ℝ | ∃ d : ℕ, ∃ c ≥ (1 : ℤ) - d, ∀ n : ℝ, f.eval n = (1 / 9) * ((10 ^ c) * (9 * n + 1) ^ d - 1)}
theorem putnam_2007_a4
(S : Set (Polynomial ℝ))
(repunit : ℝ → Prop := fun x ↦ x > 0 ∧ x = floor x ∧ ∀ d ∈ (digits 10 (floor x)), d = 1)
(hS : ∀ f : Polynomial ℝ, f ∈ S ↔ (∀ n : ℝ, repunit n → repunit (f.eval n)))
: (S = putnam_2007_a4_solution) :=
sorry

theorem putnam_2007_a5
(n p : ℕ)
(hp : Nat.Prime p)
(G : Type*) [Group G] [Fintype G]
: (∃! s : Fin n → G, ∀ i : Fin n,  orderOf (s i) = p) → n = 0 ∨ p ∣ (n+1) :=
sorry

theorem putnam_2007_b1
(f : Polynomial ℤ)
(hf : ∀ n : ℕ, f.coeff n ≥ 0)
(hfnconst : ∃ n : ℕ, n > 0 ∧ f.coeff n > 0)
(n : ℤ)
(hn : n > 0)
: f.eval n ∣ f.eval (f.eval n + 1) ↔ n = 1 :=
sorry

open Function Set
theorem putnam_2007_b2
(f : ℝ → ℝ)
(hf : ContDiffOn ℝ 1 f (Icc 0 1))
(hfint : ∫ x in (0)..1, f x = 0)
(max : ℝ)
(heqmax : ∃ x ∈ Icc (0 : ℝ) 1, |deriv f x| = max)
(hmaxub : ∀ x ∈ Icc (0 : ℝ) 1, |deriv f x| ≤ max)
: (∀ α ∈ (Ioo (0 : ℝ) 1), |∫ x in (0)..α, f x| ≤ (1 / 8) * max) :=
sorry

noncomputable abbrev putnam_2007_b3_solution : ℝ := sorry
-- (2 ^ 2006 / Real.sqrt 5) * (((1 + Real.sqrt 5) / 2) ^ 3997 - ((1 + Real.sqrt 5) / 2) ^ (-3997 : ℤ))
theorem putnam_2007_b3
(x : ℕ → ℝ)
(hx0 : x 0 = 1)
(hx : ∀ n : ℕ, x (n + 1) = 3 * (x n) + ⌊(x n) * Real.sqrt 5⌋)
: (x 2007 = putnam_2007_b3_solution) :=
sorry

abbrev putnam_2007_b4_solution : ℕ → ℕ := sorry
-- fun n ↦ 2 ^ (n + 1)
theorem putnam_2007_b4
(n : ℕ)
(npos : n > 0)
: ({(P, Q) : (Polynomial ℝ) × (Polynomial ℝ) | P ^ 2 + Q ^ 2 = Polynomial.X ^ (2 * n) + 1 ∧ P.degree > Q.degree}.ncard = putnam_2007_b4_solution n) :=
sorry

theorem putnam_2007_b5
(k : ℕ)
(kpos : k > 0)
: (∃ P : Finset.range k → Polynomial ℝ, ∀ n : ℤ, ⌊(n : ℝ) / k⌋ ^ k = ∑ i : Finset.range k, (P i).eval (n : ℝ) * ⌊(n : ℝ) / k⌋ ^ (i : ℕ)) :=
sorry

end putnam_2007

section putnam_2006

theorem putnam_2006_a3
(x : ℕ → ℕ)
(hxlo : ∀ k : ℕ, k ≤ 2006 → x k = k)
(hxhi : ∀ k : ℕ, k ≥ 2006 → x (k + 1) = x k + x (k - 2005))
: (∃ i : ℕ, i > 0 ∧ ∀ j : Finset.range 2005, 2006 ∣ x (i + j)) :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Equiv.Perm (Fin n))
noncomputable abbrev putnam_2006_a4_solution : ℕ → ℝ := sorry
-- (fun n : ℕ => (n + 1) / 3)
theorem putnam_2006_a4
(n : ℕ)
(pnat : Equiv.Perm (Fin n) → (ℕ → ℕ))
(pcount : Equiv.Perm (Fin n) → ℕ)
(ngt1 : n > 1)
(hpnat : ∀ p : Equiv.Perm (Fin n), ∀ k : Fin n, (pnat p) k = p k)
(hpcount : ∀ p : Equiv.Perm (Fin n), pcount p = {k : Fin n | (k.1 = 0 ∨ (pnat p) (k - 1) < (pnat p) k) ∧ (k = n - 1 ∨ (pnat p) k > (pnat p) (k + 1))}.encard)
: (∑ p : Equiv.Perm (Fin n), pcount p) / {p : Equiv.Perm (Fin n) | true}.ncard = putnam_2006_a4_solution n :=
sorry


abbrev putnam_2006_a5_solution : ℕ → ℤ := sorry
-- (fun n : ℕ => if (n ≡ 1 [MOD 4]) then n else -n)
theorem putnam_2006_a5
(n : ℕ)
(theta : ℝ)
(a : Set.Icc 1 n → ℝ)
(nodd : Odd n)
(thetairr : Irrational (theta / Real.pi))
(ha : ∀ k : Set.Icc 1 n, a k = Real.tan (theta + (k * Real.pi) / n))
: (∑ k : Set.Icc 1 n, a k) / (∏ k : Set.Icc 1 n, a k) = putnam_2006_a5_solution n :=
sorry

theorem putnam_2006_b2
(n : ℕ)
(npos : n > 0)
(X : Finset ℝ)
(hXcard : X.card = n)
: (∃ S ⊆ X, S ≠ ∅ ∧ ∃ m : ℤ, |m + ∑ s in S, s| ≤ 1 / (n + 1)) :=
sorry

abbrev putnam_2006_b3_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => (Nat.choose n 2) + 1)
theorem putnam_2006_b3
(SABpart : Finset (Fin 2 → ℝ) → Finset (Finset (Fin 2 → ℝ)) → Prop)
(LS : Finset (Fin 2 → ℝ) → ℕ)
(n : ℕ)
(hSABpart : ∀ (S : Finset (Fin 2 → ℝ)) (AB : Finset (Finset (Fin 2 → ℝ))), SABpart S AB = (AB.card = 2 ∧ ∃ A ∈ AB, ∃ B ∈ AB, (A ∪ B = S) ∧ (A ∩ B = ∅) ∧ (∃ m b : ℝ, (∀ p ∈ A, p 1 > m * p 0 + b) ∧ (∀ p ∈ B, p 1 < m * p 0 + b))))
(hLS : ∀ S : Finset (Fin 2 → ℝ), LS S = {AB : Finset (Finset (Fin 2 → ℝ)) | SABpart S AB}.encard)
(npos : n > 0)
: (∃ S : Finset (Fin 2 → ℝ), S.card = n ∧ LS S = putnam_2006_b3_solution n) ∧ (∀ S : Finset (Fin 2 → ℝ), S.card = n → LS S ≤ putnam_2006_b3_solution n) :=
sorry

noncomputable abbrev putnam_2006_b4_solution : ℕ → ℕ := sorry
-- fun k ↦ 2 ^ k
theorem putnam_2006_b4
(n : ℕ)
(npos : n > 0)
(k : ℕ)
(hk : k ≤ n)
(Z : Set (Fin n → ℝ) := {P : Fin n → ℝ | ∀ j : Fin n, P j = 0 ∨ P j = 1})
(max : ℕ)
(hmaxeq : ∃ V : Subspace ℝ (Fin n → ℝ), Module.rank V = k ∧ (Z ∩ V).ncard = max)
(hmaxub : ∀ V : Subspace ℝ (Fin n → ℝ), Module.rank V = k → (Z ∩ V).ncard ≤ max)
: (max = putnam_2006_b4_solution k) :=
sorry

open Set
noncomputable abbrev putnam_2006_b5_solution : ℝ := sorry
-- 1 / 16
theorem putnam_2006_b5
(I : (ℝ → ℝ) → ℝ := fun f ↦ ∫ x in (0)..1, x ^ 2 * (f x))
(J : (ℝ → ℝ) → ℝ := fun f ↦ ∫ x in (0)..1, x * (f x) ^ 2)
(max : ℝ)
(heqmax : ∃ f : ℝ → ℝ, ContinuousOn f (Icc 0 1) ∧ I f - J f = max)
(hmaxub : ∀ f : ℝ → ℝ, ContinuousOn f (Icc 0 1) → I f - J f ≤ max)
: (max = putnam_2006_b5_solution) :=
sorry

open Topology Filter

abbrev putnam_2006_b6_solution : ℕ → ℚ := fun k => ((k+1)/k)^k
theorem putnam_2006_b6
(k : ℕ)
(hk : k > 1)
(a : ℕ → ℝ)
(ha0 : a 0 > 0)
(ha : ∀ n : ℕ, a (n + 1) = a n + 1/((a n)^(1/k)))
: Tendsto (fun n => (a n)^(k+1)/(n ^ k)) atTop (𝓝 (putnam_2006_b6_solution k)) :=
sorry

end putnam_2006

section putnam_2005
open Nat

theorem putnam_2005_a1
: ∀ n : ℕ, n > 0 → (∃ k : ℕ, ∃ a : Fin k → Fin 2 → ℕ, n = ∑ i : Fin k, 2^(a i 0)*3^(a i 1) ∧
(∀ i j : Fin k, i ≠ j → ¬(2^(a i 0)*3^(a i 0) ∣ 2^(a j 0)*3^(a j 1)))) :=
sorry

theorem putnam_2005_a3
(p : Polynomial ℂ)
(n : ℕ)
(g : ℂ → ℂ)
(pdeg : p.degree = n)
(pzeros : ∀ z : ℂ, p.eval z = 0 → Complex.abs z = 1)
(hg : ∀ z : ℂ, g z = (p.eval z) / z ^ ((n : ℂ) / 2))
: ∀ z : ℂ, (deriv g z = 0) → (Complex.abs z = 1) :=
sorry

theorem putnam_2005_a4
(n : ℕ)
(H : Matrix (Fin n) (Fin n) ℝ)
(a b : ℕ)
(S : Matrix (Fin a) (Fin b) ℝ)
(npos : n ≥ 1)
(Hentries : ∀ i j : Fin n, H i j = 1 ∨ H i j = -1)
(Hortho : H.HasOrthogonalRows)
(hab : 1 ≤ a ∧ a ≤ n ∧ 1 ≤ b ∧ b ≤ n)
(Ssub : ∃ (rri : Fin a → Fin n) (cri : Fin b → Fin n), rri.Injective ∧ cri.Injective ∧ S = H.submatrix rri cri)
(Sentries : ∀ (i : Fin a) (j : Fin b), S i j = 1)
: a * b ≤ n :=
sorry

noncomputable abbrev putnam_2005_a5_solution : ℝ := sorry
-- Real.pi * (Real.log 2) / 8
theorem putnam_2005_a5 : ∫ x in (0:ℝ)..1, (Real.log (x+1))/(x^2 + 1) = putnam_2005_a5_solution :=
sorry

-- Note: There might be multiple possible correct answers.
noncomputable abbrev putnam_2005_b1_solution : MvPolynomial (Fin 2) ℝ := sorry
-- (MvPolynomial.X 1 - 2 * MvPolynomial.X 0) * (MvPolynomial.X 1 - 2 * MvPolynomial.X 0 - 1)
theorem putnam_2005_b1
: putnam_2005_b1_solution ≠ 0 ∧ ∀ a : ℝ, MvPolynomial.eval (fun n : Fin 2 => if (n = 0) then (Int.floor a : ℝ) else (Int.floor (2 * a))) putnam_2005_b1_solution = 0 :=
sorry

-- Note: uses ℕ → ℕ instead of Fin n → ℕ
abbrev putnam_2005_b2_solution : Set (ℕ × (ℕ → ℕ)) := sorry
-- {(n, k) : ℕ × (ℕ → ℕ) | (n = 1 ∧ k 0 = 1) ∨ (n = 3 ∧ (k '' {0, 1, 2} = {2, 3, 6})) ∨ (n = 4 ∧ (∀ i : Fin 4, k i = 4))}
theorem putnam_2005_b2
(n : ℕ)
(k : ℕ → ℕ)
(nkpos : Prop)
(nkeq1 : Prop)
(nkeq2 : Prop)
(hnkpos : nkpos = (n > 0 ∧ (∀ i : Fin n, k i > 0)))
(hnkeq1 : nkeq1 = (∑ i : Fin n, k i = 5 * n - 4))
(hnkeq2 : nkeq2 = (∑ i : Fin n, (1 : ℝ) / (k i) = 1))
: (nkpos ∧ nkeq1 ∧ nkeq2) ↔ (n, k) ∈ putnam_2005_b2_solution :=
sorry

-- Note: uses (ℝ → ℝ) instead of (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ))
abbrev putnam_2005_b3_solution : Set (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ)) := sorry
-- {f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ) | ∃ c d : ℝ, c > 0 ∧ d > 0 ∧ (d = 1 → c = 1) ∧ (∀ x : Set.Ioi (0 : ℝ), f x = c * x ^ d)}
theorem putnam_2005_b3
(f : ℝ → ℝ)
(fexa : Prop)
(hfexa : fexa = (∃ a > 0, ∀ x > 0, deriv f (a / x) = x / f x))
: (DifferentiableOn ℝ f (Set.Ioi (0 : ℝ)) ∧ fexa) ↔ (∃ f' ∈ putnam_2005_b3_solution, ∀ x : Set.Ioi (0 : ℝ), f' x = f x) :=
sorry

theorem putnam_2005_b4
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
(f : ℕ → ℕ → ℕ)
(hf : ∀ m' > 0, ∀ n' > 0, f m' n' = Set.encard {x : Fin n' → ℤ | ∑ i : Fin n', |x i| ≤ m'})
: f m n = f n m :=
sorry

theorem putnam_2005_b6
(n : ℕ)
(v : Equiv.Perm (Fin n) → ℕ)
(npos : n ≥ 1)
(hv : ∀ p : Equiv.Perm (Fin n), v p = Set.encard {i : Fin n | p i = i})
: (∑ p : Equiv.Perm (Fin n), (Equiv.Perm.signAux p : ℤ) / (v p + 1)) = (-1) ^ (n + 1) * (n / (n + 1)) :=
sorry
end putnam_2005

section putnam_2004
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

end putnam_2004

section putnam_2003
open MvPolynomial

abbrev putnam_2003_a1_solution : ℕ → ℕ := fun n => n
theorem putnam_2003_a1
(n : ℕ)
(hn : n > 0)
: Set.ncard {a : ℕ → ℕ | ∃ k : ℕ, (k > 0) ∧ ∑ i in Finset.range k, a i = n ∧ ∀ i : ℕ, a i > 0 ∧ ∀ i : Finset.range (k-1), a i ≤ a (i + 1) ∧ a k ≤ a 1 + 1} = putnam_2003_a1_solution n :=
sorry

theorem putnam_2003_a2
(n : ℕ)
(a b : Fin n → ℝ)
(abnneg : ∀ i : Fin n, a i ≥ 0 ∧ b i ≥ 0)
: (∏ i : Fin n, a i) ^ (1 / n) + (∏ i : Fin n, b i) ^ (1 / n) ≤ (∏ i : Fin n, (a i + b i)) ^ (1 / n) :=
sorry

noncomputable abbrev putnam_2003_a3_solution : ℝ := sorry
-- 2 * Real.sqrt 2 - 1
theorem putnam_2003_a3
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = |Real.sin x + Real.cos x + Real.tan x + 1 / Real.tan x + 1 / Real.cos x + 1 / Real.sin x|)
: (∃ x : ℝ, f x = putnam_2003_a3_solution) ∧ (∀ x : ℝ, f x ≥ putnam_2003_a3_solution) :=
sorry

theorem putnam_2003_a4
(a b c A B C : ℝ)
(aAne0 : a ≠ 0 ∧ A ≠ 0)
(hle : ∀ x : ℝ, |a * x ^ 2 + b * x + c| ≤ |A * x ^ 2 + B * x + C|)
: |b ^ 2 - 4 * a * c| ≤ |B ^ 2 - 4 * A * C| :=
sorry

abbrev putnam_2003_a6_solution : Prop := sorry
-- True
theorem putnam_2003_a6
(r : Set ℕ → ℕ → ℕ)
(hr : ∀ (S : Set ℕ) (n : ℕ), r S n = ∑' s1 : S, ∑' s2 : S, if (s1 ≠ s2 ∧ s1 + s2 = n) then 1 else 0)
: (∃ A B : Set ℕ, A ∪ B = ℕ ∧ A ∩ B = ∅ ∧ (∀ n : ℕ, r A n = r B n)) ↔ putnam_2003_a6_solution :=
sorry

abbrev putnam_2003_b1_solution : Prop := sorry
-- False
theorem putnam_2003_b1
: (∃ a b c d : MvPolynomial (Fin 2) ℝ, (degreeOf 1 a = 0 ∧ degreeOf 1 b = 0 ∧ degreeOf 0 c = 0 ∧ degreeOf 0 d = 0)
→  1 + (X 0) * (X 1) + (X 0)^2 * (X 1)^2 = a * b + c * d) ↔ putnam_2003_b1_solution :=
sorry

open Nat
theorem putnam_2003_b3
(multicc : ℕ → ℕ → Prop)
(lcmicc : ℕ → ℕ)
(hmulticc : ∀ n mult : ℕ, multicc n mult = ∀ i : Set.Icc 1 n, i.1 ∣ mult)
(hlcmicc : ∀ n : ℕ, multicc n (lcmicc n) ∧ (∀ n' : ℕ, multicc n n' → n' ≥ (lcmicc n)))
: ∀ n > 0, (n)! = ∏ i : Set.Icc 1 n, lcmicc (Nat.floor (n / i.1)) :=
sorry


theorem putnam_2003_b4
(f : ℝ → ℝ)
(a b c d e : ℤ)
(r1 r2 r3 r4 : ℝ)
(ane0 : a ≠ 0)
(hf1 : ∀ z : ℝ, f z = a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e)
(hf2 : ∀ z : ℝ, f z = a * (z - r1) * (z - r2) * (z - r3) * (z - r4))
: (¬Irrational (r1 + r2) ∧ r1 + r2 ≠ r3 + r4) → ¬Irrational (r1 * r2) :=
sorry

theorem putnam_2003_b6
(f : ℝ → ℝ)
(hf : Continuous f)
: (∫ x in (0 : ℝ)..1, (∫ y in (0 : ℝ)..1, |f x + f y|)) ≥ (∫ x in (0 : ℝ)..1, |f x|) :=
sorry

end putnam_2003

section putnam_2002

abbrev putnam_2002_a1_solution : ℕ → ℕ → ℝ := sorry
-- (fun k n : ℕ => (-k) ^ n * (n)!)
theorem putnam_2002_a1
(k : ℕ)
(P : ℕ → Polynomial ℝ)
(kpos : k > 0)
(Pderiv : ∀ n : ℕ, ∀ x : ℝ, iteratedDeriv n (fun x' : ℝ => 1 / (x' ^ k - 1)) x = ((P n).eval x) / ((x ^ k - 1) ^ (n + 1)))
: ∀ n : ℕ, (P n).eval 1 = putnam_2002_a1_solution k n :=
sorry

theorem putnam_2002_a3
(n : ℕ)
(hn : n ≥ 2)
(T : ℕ → ℝ)
(hT : ∀ n ≥ 2, T n = Set.ncard {S | S ⊆ Finset.range n ∧ ∃ k : ℤ, k = (∑ s in S, s + 1)})
: (∀ n ≥ 2, Even (T n - n)) :=
sorry

open Set

theorem putnam_2002_a5
(a : ℕ → ℚ)
(ha : a 0 = 1 ∧ ∀ n : ℕ, a (2*n + 1) = a n ∧ a (2*n + 2) = a n + a (n + 1))
: ∀ q : ℚ, q > 0 → q ∈ {a (n - 1) / a n | n ∈ Ici 1} :=
sorry

open Topology Filter

abbrev putnam_2002_a6_solution : Set ℕ := sorry
-- {2}
theorem putnam_2002_a6
(f : ℕ → ℕ → ℝ)
(hf : ∀ b : ℕ, f b 1 = 1 ∧ f b 2 = 2 ∧ ∀ n ∈ Ici 3, f b n = n * f b (Nat.digits b n).length)
: {b ∈ Ici 2 | ∃ L : ℝ, Tendsto (fun m : ℕ => ∑ n in Finset.Icc 1 m, 1/(f b n)) atTop (𝓝 L)} = putnam_2002_a6_solution :=
sorry

theorem putnam_2002_b3
(e : ℝ := Real.exp 1)
(f : ℤ → ℝ := fun n : ℤ => 1/e - (1 - 1/n)^n)
: ∀ n : ℤ, n > 1 → 1/(2*n*e) < f n ∧ f n < 1/(n*e) :=
sorry

theorem putnam_2002_b5
: ∃ n : ℕ, {b : ℕ | (Nat.digits b n).length = 3 ∧ List.Palindrome (Nat.digits b n)}.ncard ≥ 2002 :=
sorry

open Matrix
open MvPolynomial

theorem putnam_2002_b6
(p : ℕ)
(hp : Prime p)
(M : Matrix (Fin 3) (Fin 3) (MvPolynomial (Fin 3) ℤ) := fun r : Fin 3 => fun c : Fin 3 => (X c)^(p^(r : ℕ)))
(cong : ℕ → MvPolynomial (Fin 3) ℤ × MvPolynomial (Fin 3) ℤ → Prop := fun p : ℕ => fun (f, g) => ∀ n : Fin 3 →₀ ℕ, Int.ModEq p (f.coeff n) (g.coeff n))
: ∃ S : Finset (MvPolynomial (Fin 3) ℤ), cong p ((det M), (∏ s in S, s)) ∧ ∀ s ∈ S, (∃ a b c : ℤ, s = (C a)*(X 0) + (C b)*(X 1) + (C c)*(X 2)) :=
sorry


end putnam_2002

section putnam_2001
open Topology Filter

theorem putnam_2001_a1
(S : Type*)
[Mul S]
(hS : ∀ a b : S, (a * b) * a = b)
: ∀ a b : S, a * (b * a) = b :=
sorry

open Polynomial Set

abbrev putnam_2001_a3_solution : Set ℤ := sorry
-- {m : ℤ | ∃ k : ℤ, k^2 = m ∨ 2*k^2 = m}
theorem putnam_2001_a3
(P : ℤ → Polynomial ℤ := fun m : ℤ => (Polynomial.X)^4 - (Polynomial.C (2*m + 4))*(Polynomial.X)^2 + Polynomial.C ((m - 2)^2))
: {m : ℤ | ∃ a : Polynomial ℤ, ∃ b : Polynomial ℤ, P m = a * b ∧
(∃ n ∈ Ici 1, a.coeff n ≠ 0) ∧ (∃ n ∈ Ici 1, b.coeff n ≠ 0)} = putnam_2001_a3_solution :=
sorry


theorem putnam_2001_a5
: ∃! a n : ℕ, a^(n+1) - (a+1)^n = 2001 :=
sorry


theorem putnam_2001_b1
(n : ℕ)
(nums : Fin n → Fin n → ℕ)
(colors : Fin n → Fin n → Fin 2)
(npos : n > 0)
(neven : Even n)
(hnums : ∀ k l : Fin n, nums k l = k * n + l + 1)
(hcolorsrows : ∀ k : Fin n, (∑ l : Fin n, (if (colors k l = 0) then 1 else 0)) = n / 2)
(hcolorscols : ∀ l : Fin n, (∑ k : Fin n, (if (colors k l = 0) then 1 else 0)) = n / 2)
: (∑ k : Fin n, ∑ l : Fin n, (if (colors k l = 0) then (nums k l) else 0)) = (∑ k : Fin n, ∑ l : Fin n, (if (colors k l = 1) then (nums k l) else 0)) :=
sorry

abbrev putnam_2001_b2_solution : Set (ℝ × ℝ) := sorry
-- {((3 ^ ((1 : ℝ) / 5) + 1) / 2, (3 ^ ((1 : ℝ) / 5) - 1) / 2)}
theorem putnam_2001_b2
(x y : ℝ)
(eq1 : Prop)
(eq2 : Prop)
(heq1 : eq1 = (1 / x + 1 / (2 * y) = (x ^ 2 + 3 * y ^ 2) * (3 * x ^ 2 + y ^ 2)))
(heq2 : eq2 = (1 / x - 1 / (2 * y) = 2 * (y ^ 4 - x ^ 4)))
: (eq1 ∧ eq2) ↔ (x, y) ∈ putnam_2001_b2_solution :=
sorry

abbrev putnam_2001_b3_solution : ℝ := sorry
-- 3
theorem putnam_2001_b3
: ∑' n : Set.Ici 1, ((2 : ℝ) ^ (round (Real.sqrt n)) + (2 : ℝ) ^ (-round (Real.sqrt n))) / 2 ^ (n : ℝ) = putnam_2001_b3_solution :=
sorry

open Set
abbrev putnam_2001_b4_solution : Prop := sorry
-- True
theorem putnam_2001_b4
(S : Set ℚ)
(hS : S = univ \ {-1, 0, 1})
(f : S → S)
(hf : ∀ x : S, f x = x - 1 / (x : ℚ))
: ⋂ n ∈ Ici 1, f^[n] '' univ = ∅ ↔ putnam_2001_b4_solution :=
sorry

theorem putnam_2001_b5
(a b : ℝ)
(g : ℝ → ℝ)
(abint : 0 < a ∧ a < 1 / 2 ∧ 0 < b ∧ b < 1 / 2)
(gcont : Continuous g)
(hg : ∀ x : ℝ, g (g x) = a * g x + b * x)
: ∃ c : ℝ, ∀ x : ℝ, g x = c * x :=
sorry

-- Note: uses (ℕ → ℝ) instead of (Set.Ici 1 → ℝ)
abbrev putnam_2001_b6_solution : Prop := sorry
-- True
theorem putnam_2001_b6
(aposinc : (ℕ → ℝ) → Prop)
(alim : (ℕ → ℝ) → Prop)
(haposinc : ∀ a : ℕ → ℝ, aposinc a = ∀ n ≥ 1, a n > 0 ∧ a n < a (n + 1))
(halim : ∀ a : ℕ → ℝ, alim a = Tendsto (fun n : ℕ => a (n + 1) / (n + 1)) atTop (𝓝 0))
: (∀ a : ℕ → ℝ, (aposinc a ∧ alim a) → {n : ℕ | n > 0 ∧ (∀ i : Fin (n - 1), a (n - (i + 1)) + a (n + (i + 1)) < 2 * a n)}.Infinite) ↔ putnam_2001_b6_solution :=
sorry

end putnam_2001

section putnam_2000
open Topology Filter

abbrev putnam_2000_a1_solution : ℝ → Set ℝ := sorry
-- (fun A : ℝ => Set.Ioo 0 (A ^ 2))
theorem putnam_2000_a1
(A : ℝ)
(Apos : A > 0)
: ({S : ℝ | ∃ x : ℕ → ℝ, (∀ j : ℕ, x j > 0) ∧ (∑' j : ℕ, x j) = A ∧ (∑' j : ℕ, (x j) ^ 2) = S} = putnam_2000_a1_solution A) :=
sorry

theorem putnam_2000_a2
: ∀ n : ℕ, ∃ N > n, ∃ i : Fin 6 → ℕ, N = (i 0)^2 + (i 1)^2 ∧ N + 1 = (i 2)^2 + (i 3)^2 ∧ N + 2 = (i 4)^2 + (i 5)^2 :=
sorry

theorem putnam_2000_a4
: ∃ y : ℝ, Tendsto (fun B : ℝ => ∫ x in Set.Ioo 0 B, Real.sin x * Real.sin (x ^ 2)) atTop (𝓝 y) :=
sorry

theorem putnam_2000_a5
(r : ℝ)
(z : Fin 2 → ℝ)
(p : Fin 3 → (Fin 2 → ℝ))
(rpos : r > 0)
(pdiff : ∀ n m : Fin 3, (n ≠ m) → (p n ≠ p m))
(pint : ∀ (n : Fin 3) (i : Fin 2), p n i = round (p n i))
(pcirc : ∀ n : Fin 3, p n ∈ Metric.sphere z r)
: ∃ n m : Fin 3, (n ≠ m) ∧ (dist (p n) (p m) ≥ r ^ ((1 : ℝ) / 3)) :=
sorry


theorem putnam_2000_a6
(f : Polynomial ℤ)
(a : ℕ → ℤ)
(ha0 : a 0 = 0)
(ha : ∀ n : ℕ, a (n + 1) = f.eval (a n))
: ((∃ m > 0, a m = 0) → (a 1 = 0 ∨ a 2 = 0)) :=
sorry

theorem putnam_2000_b1
(N : ℕ)
(a b c : Fin N → ℤ)
(Nge1 : N ≥ 1)
(hodd : ∀ j : Fin N, Odd (a j) ∨ Odd (b j) ∨ Odd (c j))
: (∃ r s t : ℤ, {j : Fin N | Odd (r * a j + s * b j + t * c j)}.ncard ≥ (4 * N : ℝ) / 7) :=
sorry

open Nat

theorem putnam_2000_b2
: (∀ m n : ℕ, m ≥ 1 → n ≥ m → n ∣ Nat.gcd m n * Nat.choose n m) :=
sorry

open Filter Topology Set Function

theorem putnam_2000_b3
(N : ℕ)
(Npos : N > 0)
(a : Fin (N + 1) → ℝ)
(haN : a N ≠ 0)
(f : ℝ → ℝ := fun t ↦ ∑ j : Icc 1 N, a j * Real.sin (2 * Real.pi * j * t))
(mult : (ℝ → ℝ) → ℝ → ℕ)
(hmult : ∀ g : ℝ → ℝ, ∀ t : ℝ, (∃ c : ℕ, iteratedDeriv c g t ≠ 0) → (iteratedDeriv (mult g t) g t ≠ 0 ∧ ∀ k < (mult g t), iteratedDeriv k g t = 0))
(M : ℕ → ℕ := fun k ↦ ∑' t : Ico (0 : ℝ) 1, mult (iteratedDeriv k f) t)
: ((∀ i j : ℕ, i ≤ j → M i ≤ M j) ∧ Tendsto M ⊤ (𝓝 (2 * N))) :=
sorry

open Set
theorem putnam_2000_b4
(f : ℝ → ℝ)
(hfcont : Continuous f)
(hf : ∀ x : ℝ, f (2 * x ^ 2 - 1) = 2 * x * f x)
: ∀ x : ℝ, x ∈ Icc (-1) 1 → f x = 0 :=
sorry

theorem putnam_2000_b5
(S : ℕ → Set ℤ)
(hSfin : ∀ n : ℕ, Set.Finite (S n))
(hSpos : ∀ n : ℕ, ∀ s ∈ S n, s > 0)
(hSdef : ∀ n : ℕ, ∀ a : ℤ, a ∈ S (n + 1) ↔ Xor' (a - 1 ∈ S n) (a ∈ S n))
: (∀ n : ℕ, ∃ N ≥ n, S N = S 0 ∪ {M : ℤ | M - N ∈ S 0}) :=
sorry

end putnam_2000

section putnam_1999

-- Note: The actual problem asks to "find" such polynomials as well - but the solution does not give a set of all possible solutions
-- So we would need to do the analysis ourselves, the following formalization should work.
abbrev putnam_1999_a1_solution : Prop := sorry
-- True
theorem putnam_1999_a1
: putnam_1999_a1_solution ↔ ∃ f g h : Polynomial ℝ, ∀ x : ℝ, |f.eval x| - |g.eval x| + h.eval x = if x < -1 then -1 else (if (x ≤ 0) then 3 * x + 2 else -2 * x + 2) :=
sorry


theorem putnam_1999_a2
(p : Polynomial ℝ)
(hp : ∀ x : ℝ, p.eval x ≥ 0)
: ∃ k : ℕ, k > 0 ∧ ∃ f : Fin k → Polynomial ℝ,
∀ x : ℝ, p.eval x = ∑ j : Fin k, ((f j).eval x) ^ 2 :=
sorry

open Filter Topology Metric

theorem putnam_1999_a3
(f : ℝ → ℝ := fun x => 1/(1 - 2 * x - x^2))
(a : ℕ → ℝ)
(hf : ∃ ε > 0, ∀ x ∈ ball 0 ε, Tendsto (λ n => ∑ i in Finset.range n, (a n) * x^n) atTop (𝓝 (f x)))
: ∀ n : ℕ, ∃ m : ℕ, (a n)^2 + (a (n + 1))^2 = a m :=
sorry

-- Note: This is done assuming that the series converges, otherwise it is unclear in which order to sum. The problem statement assumes convergence
noncomputable abbrev putnam_1999_a4_solution : ℝ := sorry
-- 9/32
theorem putnam_1999_a4
: Tendsto (fun i => ∑ m in Finset.range i, ∑' n : ℕ, (((m + 1)^2*(n+1))/(3^(m + 1) * ((n+1)*3^(m + 1) + (m + 1)*3^(n+1))) : ℝ)) atTop (𝓝 putnam_1999_a4_solution) :=
sorry

theorem putnam_1999_a5
: ∃ C : ℝ, ∀ p : Polynomial ℝ, p.degree = 1999 → ‖p.eval 0‖ ≤ C * ∫ x in (-1)..1, ‖p.eval x‖ :=
sorry

theorem putnam_1999_a6
(a : ℕ → ℝ)
(ha1 : a 1 = 1)
(ha2 : a 2 = 2)
(ha3 : a 3 = 24)
(hange4 : ∀ n : ℕ, n ≥ 4 → a n = (6 * (a (n - 1))^2 * (a (n - 3)) - 8 * (a (n - 1)) * (a (n - 2))^2)/(a (n - 2) * a (n - 3)))
: ∀ n, n ≥ 1 → (∃ k : ℤ, a n = k * n) :=
sorry

theorem putnam_1999_b2
(P Q : Polynomial ℂ)
(hQ : Q.natDegree = 2)
(hP : ∀ x : ℂ, P.eval x = (Q.eval x) * (Polynomial.derivative^[2] P).eval x)
: (∃ x1 x2 : ℂ, x1 ≠ x2 ∧ P.eval x1 = 0 ∧ P.eval x2 = 0) → (∃ f : Fin (P.natDegree) → ℂ, (∀ i j : Fin (P.natDegree), i ≠ j → f i ≠ f j) ∧ (∀ i : Fin (P.natDegree), P.eval (f i) = 0)) :=
sorry

abbrev putnam_1999_b3_solution : ℝ := sorry
-- 3
theorem putnam_1999_b3
(A : Set (ℝ × ℝ) := {xy : ℝ × ℝ | 0 ≤ xy.1 ∧ xy.1 < 1 ∧ 0 ≤ xy.2 ∧ xy.2 < 1})
(S : ℝ → ℝ → ℝ := fun x y => ∑' m : ℕ, ∑' n : ℕ, if (m > 0 ∧ n > 0 ∧ 1/2 ≤ m/n ∧ m/n ≤ 2) then x^m * y^n else 0)
: Tendsto (fun xy : (ℝ × ℝ) => (1 - xy.1 * xy.2^2) * (1 - xy.1^2 * xy.2) * (S xy.1 xy.2)) (𝓝[A] ⟨1,1⟩) (𝓝 putnam_1999_b3_solution) :=
sorry

theorem putnam_1999_b4
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
(hpos: ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
(hle : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x)
: ∀ x : ℝ, deriv f x < 2 * (f x) :=
sorry

noncomputable abbrev putnam_1999_b5_solution : ℕ → ℝ := sorry
-- fun n => 1 - n^2/4
theorem putnam_1999_b5
(n : ℕ)
(hn : n ≥ 3)
(theta : ℝ := 2 * Real.pi / n)
(A : Matrix (Fin n) (Fin n) ℝ := fun j k => Real.cos ((j.1 + 1) * theta + (k.1 + 1) * theta))
: ((1 : Matrix (Fin n) (Fin n) ℝ) + A).det = putnam_1999_b5_solution n :=
sorry

theorem putnam_1999_b6
(S : Finset ℤ)
(hSgt : ∀ s : ℤ, s ∈ S → s > 1)
(hSgcd : ∀ n : ℤ, ∃ s : S, Int.gcd s n = 1 ∨ Int.gcd s n = (s : ℤ))
: ∃ s t : S, Prime (Int.gcd s t) :=
sorry

end putnam_1999

section putnam_1998

theorem putnam_1998_a3
(f : ℝ → ℝ)
(hf : ContDiff ℝ 3 f)
: ∃ a : ℝ, (f a) * (deriv f a) * (iteratedDeriv 2 f a) * (iteratedDeriv 3 f a) ≥ 0 :=
sorry

-- Note: Since .digits and .ofDigits work in little-endian mode, one must switch the order of the concatenation here.
abbrev putnam_1998_a4_solution : Set ℕ := sorry
-- {n | n ≡ 1 [MOD 6]}
theorem putnam_1998_a4
(A : ℕ → ℕ)
(hA1 : A 1 = 0)
(hA2 : A 2 = 1)
(hA : ∀ n : ℕ, n > 2 → A n = Nat.ofDigits 10 (Nat.digits 10 (A (n - 2)) ++ Nat.digits 10 (A (n - 1))))
: putnam_1998_a4_solution = {n | 11 ∣ A n} :=
sorry

open Set Function Metric
theorem putnam_1998_a5
(k : ℕ)
(c : Fin k → (ℝ × ℝ))
(r : Fin k → ℝ)
(hr : ∀ i : Fin k, r i > 0)
(E : Set (ℝ × ℝ))
(hE : E ⊆ ⋃ i : Fin k, ball (c i) (r i))
: ∃ (n : ℕ) (t : Fin n → Fin k), (∀ i j : Fin n, i ≠ j → (ball (c (t i)) (r (t i)) ∩ ball (c (t j)) (r (t j)) = ∅)) ∧ E ⊆ ⋃ i : Fin n, ball (c (t i)) (3 * (r (t i))) :=
sorry

abbrev putnam_1998_b1_solution : ℝ := sorry
-- 6
theorem putnam_1998_b1
: sInf {((x + 1/x)^6 - (x^6 + 1/x^6) - 2)/((x + 1/x)^3 + (x^3 + 1/x^3)) | x > (0 : ℝ)} = putnam_1998_b1_solution :=
sorry

-- TODO: This currently errors, might need to update Lean4 version
noncomputable abbrev putnam_1998_b2_solution : ℝ → ℝ → ℝ := sorry
-- fun a b => if a > b then Real.sqrt (2*a^2 + 2*b^2) else 0
theorem putnam_1998_b2
(a b : ℝ)
(hab : 0 < b ∧ b < a)
: sInf {Euclidean.dist (a, b) (c, 0) + Euclidean.dist (c, 0) (x, x) + Euclidean.dist (a, b) (x, x) | (c : ℝ) (x : ℝ)
  Euclidean.dist (a, b) (c, 0) + Euclidean.dist (c, 0) (x, x) > Euclidean.dist (a, b) (x, x) ∧
  Euclidean.dist (a, b) (c, 0) + Euclidean.dist (a, b) (x, x) > Euclidean.dist (c, 0) (x, x) ∧
  Euclidean.dist (c, 0) (x, x) + Euclidean.dist (a, b) (x, x) > Euclidean.dist (a, b) (c, 0) }
 = putnam_1998_b2_solution a b :=
sorry

abbrev putnam_1998_b4_solution : Set (ℕ × ℕ) := sorry
-- {nm | let ⟨n,m⟩ := nm; multiplicity 2 n ≠ multiplicity 2 m}
theorem putnam_1998_b4
(hsum : ℕ → ℕ → ℤ := fun n m => ∑ i in Finset.range (m * n), (-1)^(i/m + i/n))
: ∀ n m : ℕ, n > 0 ∧ m > 0 → ((hsum n m) = 0 ↔ ⟨n, m⟩ ∈ putnam_1998_b4_solution) :=
sorry

abbrev putnam_1998_b5_solution : ℕ := sorry
-- 1
theorem putnam_1998_b5
(N : ℕ := ∑ i in Finset.range 1998, 10^i)
: putnam_1998_b5_solution = (Nat.floor (10^1000 * Real.sqrt N)) % 10 :=
sorry


theorem putnam_1998_b6
: ∀ a b c : ℤ, ∃ n : ℤ, n > 0 ∧ ¬(∃ k : ℤ, k = Real.sqrt (n^3 + a * n^2 + b * n + c)) :=
sorry


end putnam_1998

section putnam_1997
open Filter Topology
noncomputable abbrev putnam_1997_a3_solution : ℝ := sorry
-- Real.sqrt (Real.exp 1)
theorem putnam_1997_a3
(series1 : ℝ → ℝ := fun x => ∑' n : ℕ, (-1)^n * x^(2*n + 1)/(∏ i : Finset.range n, 2 * ((i : ℝ) + 1)))
(series2 : ℝ → ℝ := fun x => ∑' n : ℕ, x^(2*n)/(∏ i : Finset.range n, (2 * ((i : ℝ) + 1))^2))
: Tendsto (fun t => ∫ x in Set.Icc 0 t, series1 x * series2 x) atTop (𝓝 (putnam_1997_a3_solution)) :=
sorry

theorem putnam_1997_a4
(G : Type*)
[Group G]
(φ : G → G)
(hφ : ∀ g1 g2 g3 h1 h2 h3 : G, (g1 * g2 * g3 = 1 ∧ h1 * h2 * h3 = 1) → φ g1 * φ g2 * φ g3 = φ h1 * φ h2 * φ h3)
: ∃ a : G, let ψ := fun g => a * φ g; ∀ x y : G, ψ (x * y) = ψ x * ψ y :=
sorry

abbrev putnam_1997_a5_solution : Prop := sorry
-- True
theorem putnam_1997_a5
(N := fun (n : ℕ+) => {t : Fin n → ℕ+ | (∀ i j : Fin n, i < j → t i <= t j) ∧ (∑ i : Fin n, (1 : ℝ)/(t i) = 1) })
: Odd (N 10).ncard ↔ putnam_1997_a5_solution :=
sorry

abbrev putnam_1997_a6_solution : ℤ → ℤ → ℝ := sorry
-- fun n k => Nat.choose (n.toNat-1) (k.toNat-1)
theorem putnam_1997_a6
(n : ℤ)
(hn : n > 0)
(C : ℝ)
(x : ℝ → (ℤ → ℝ))
(hx0 : ∀ c : ℝ, x c 0 = 0)
(hx1 : ∀ c : ℝ, x c 1 = 1)
(hxk : ∀ c : ℝ, ∀ k : ℕ, x c (k + 2) = (c*(x c (k + 1)) - (n - k)*(x c k))/(k + 1))
(S : Set ℝ := {c : ℝ | x c (n + 1) = 0})
(hC : C = sSup S)
: ∀ k : Set.Icc 1 n, x C k = putnam_1997_a6_solution n k :=
sorry

abbrev putnam_1997_b1_solution : ℕ → ℝ := sorry
-- fun n => n
noncomputable def dist_to_int : ℝ → ℝ := fun r => |r - round r|
theorem putnam_1997_b1
(F : ℕ → ℝ := fun n => ∑ m in Finset.Icc 1 (6 * n - 1), min (dist_to_int (m/(6*n)) ) (dist_to_int (m/(3*n))))
: ∀ n, n > 0 → F n = putnam_1997_b1_solution n :=
sorry


open Bornology Set
theorem putnam_1997_b2
(f g : ℝ → ℝ)
(hg : ∀ x : ℝ, g x ≥ 0)
(hfderiv1 : ContDiff ℝ 1 f)
(hfderiv2 : Differentiable ℝ (deriv f))
(hfg : ∀ x : ℝ, f x + iteratedDeriv 2 f x = -x * g x * deriv f x)
: IsBounded (range (fun x => |f x|)) :=
sorry

abbrev putnam_1997_b3_solution : Set ℕ := sorry
-- {n | (1 ≤ n ∧ n ≤ 4) ∨ (20 ≤ n ∧ n ≤ 24) ∨ (100 ≤ n ∧ n ≤ 104) ∨ (120 ≤ n ∧ n ≤ 124)}
theorem putnam_1997_b3
(n : ℕ)
(hn : n > 0)
: n ∈ putnam_1997_b3_solution ↔ ¬5 ∣ (∑ m in Finset.Icc 1 n, 1/m : ℚ).den :=
sorry

open Polynomial
theorem putnam_1997_b4
(a : ℕ → ℕ → ℤ)
(ha : ∀ n m : ℕ, a n m = coeff ((1 + X + X^2)^m) n)
: ∀ k : ℕ, k ≥ 0 → (∑ i in Finset.Icc 0 (Nat.floor (2*k/(3 : ℚ))), (-1)^(i : ℕ) * (a (k - i) i : ℝ)) ∈ Set.Icc (0 : ℝ) 1 :=
sorry

def tetration : ℕ → ℕ → ℕ
  | _, 0 => 1
  | m, (n + 1) => m^(tetration m n)
theorem putnam_1997_b5
(n : ℕ)
(hn : n ≥ 2)
: tetration 2 n ≡ tetration 2 (n-1) [MOD n] :=
sorry

end putnam_1997

section putnam_1996

abbrev putnam_1996_a3_solution : Prop := sorry
-- False
theorem putnam_1996_a3
(student_choices : Finset.range 20 → Set (Finset.range 6))
: putnam_1996_a3_solution ↔ ∃ S : Set (Finset.range 20), ∃ c1 c2 : Finset.range 6, c1 ≠ c2 ∧ S.ncard = 5 ∧ ({c1, c2} ⊆ ⋂ s ∈ S, student_choices s ∨ ({c1, c2} ⊆ ⋂ s ∈ S, (student_choices s)ᶜ)) :=
sorry

open Function
theorem putnam_1996_a4
(A : Type*)
[Finite A]
(S : Set (A × A × A))
(hSdistinct : ∀ a b c : A, ⟨a, b, c⟩ ∈ S → a ≠ b ∧ b ≠ c ∧ a ≠ c)
(hS1 : ∀ a b c : A, ⟨a, b, c⟩ ∈ S ↔ ⟨b, c, a⟩ ∈ S)
(hS2 : ∀ a b c : A, ⟨a, b, c⟩ ∈ S ↔ ⟨c, b, a⟩ ∉ S)
(hS3 : ∀ a b c d : A, (⟨a, b, c⟩ ∈ S ∧ ⟨c, d, a⟩ ∈ S) ↔ (⟨b,c,d⟩ ∈ S ∧ ⟨d,a,b⟩ ∈ S))
: ∃ g : A → ℝ, Injective g ∧ (∀ a b c : A, g a < g b ∧ g b < g c → ⟨a,b,c⟩ ∈ S) :=
sorry

theorem putnam_1996_a5
(p : ℕ)
(hpprime : Prime p)
(hpge3 : p > 3)
(k : ℕ := Nat.floor (2*p/(3 : ℚ)))
: p^2 ∣ ∑ i in Finset.Icc 1 k, Nat.choose p i :=
sorry


abbrev putnam_1996_a6_solution : ℝ → Set (ℝ → ℝ) := sorry
-- (fun c : ℝ => if c ≤ 1 / 4 then {f : ℝ → ℝ | ∃ d : ℝ, ∀ x : ℝ, f x = d} else {f : ℝ → ℝ | ContinuousOn f (Set.Icc 0 c) ∧ f 0 = f c ∧ (∀ x > 0, f x = f (x ^ 2 + c)) ∧ (∀ x < 0, f x = f (-x))})
theorem putnam_1996_a6
(c : ℝ)
(f : ℝ → ℝ)
(cgt0 : c > 0)
: (Continuous f ∧ ∀ x : ℝ, f x = f (x ^ 2 + c)) ↔ f ∈ putnam_1996_a6_solution c :=
sorry

abbrev putnam_1996_b1_solution : ℕ → ℕ := sorry
-- Nat.fib
theorem putnam_1996_b1
(selfish : Finset ℕ → Prop)
(n : ℕ)
(hselfish : ∀ s : Finset ℕ, selfish s = (s.card ∈ s))
(npos : n ≥ 1)
: {s : Finset ℕ | (s : Set ℕ) ⊆ Set.Icc 1 n ∧ selfish s ∧ (∀ ss : Finset ℕ, ss ⊂ s → ¬selfish ss)}.encard = putnam_1996_b1_solution n :=
sorry

theorem putnam_1996_b2
(n : ℕ)
(prododd : ℝ)
(npos : n > 0)
(hprododd : prododd = ∏ i in Finset.range (2 * n), if Odd i then i else 1)
: ((2 * n - 1 : ℝ) / Real.exp 1) ^ ((2 * n - 1 : ℝ) / 2) < prododd ∧ prododd < ((2 * n + 1 : ℝ) / Real.exp 1) ^ ((2 * n + 1 : ℝ) / 2) :=
sorry

-- Note: uses (ℕ → ℕ) instead of (Fin n → ℕ)
abbrev putnam_1996_b3_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => (2 * n ^ 3 + 3 * n ^ 2 - 11 * n + 18) / 6)
theorem putnam_1996_b3
(n : ℕ)
(xset : (ℕ → ℕ) → Prop)
(xsum : (ℕ → ℕ) → ℕ)
(nge2 : n ≥ 2)
(hxset : ∀ x : ℕ → ℕ, xset x = (x '' (Finset.range n) = Set.Icc 1 n))
(hxsum : ∀ x : ℕ → ℕ, xsum x = ∑ i : Fin n, x i * x ((i + 1) % n))
: (∃ x : ℕ → ℕ, xset x ∧ xsum x = putnam_1996_b3_solution n) ∧ (∀ x : ℕ → ℕ, xset x → xsum x ≤ putnam_1996_b3_solution n) :=
sorry

open Nat
abbrev putnam_1996_b4_solution : Prop := sorry
-- False
theorem putnam_1996_b4
(matsin : Matrix (Fin 2) (Fin 2) ℝ → Matrix (Fin 2) (Fin 2) ℝ)
(mat1996 : Matrix (Fin 2) (Fin 2) ℝ)
(hmatsin : ∀ A : Matrix (Fin 2) (Fin 2) ℝ, matsin A = ∑' n : ℕ, ((-(1 : ℝ)) ^ n / (2 * n + 1)!) • A ^ (2 * n + 1))
(hmat1996 : mat1996 0 0 = 1 ∧ mat1996 0 1 = 1996 ∧ mat1996 1 0 = 0 ∧ mat1996 1 1 = 1)
: (∃ A : Matrix (Fin 2) (Fin 2) ℝ, matsin A = mat1996) ↔ putnam_1996_b4_solution :=
sorry

abbrev putnam_1996_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => if Even n then (3 * 2 ^ (n / 2) - 2) else (2 ^ ((n + 1) / 2) - 2))
theorem putnam_1996_b5
(n : ℕ)
(STdelta : (Fin n → Fin 2) → Fin n → Fin n → ℤ)
(Sbalanced : (Fin n → Fin 2) → Prop)
(hSTdelta : ∀ S : Fin n → Fin 2, ∀ T1 T2 : Fin n, T1 ≤ T2 → (STdelta S T1 T2 = ∑ i : Set.Icc T1 T2, if S i = 1 then 1 else -1))
(hSbalanced : ∀ S : Fin n → Fin 2, Sbalanced S = ∀ T1 T2 : Fin n, T1 ≤ T2 → (-2 ≤ STdelta S T1 T2 ∧ STdelta S T1 T2 ≤ 2))
: {S : Fin n → Fin 2 | Sbalanced S}.encard = putnam_1996_b5_solution n :=
sorry

end putnam_1996

section putnam_1995

theorem putnam_1995_a1
(S : Set ℝ)
(hS : ∀ a ∈ S, ∀ b ∈ S, a * b ∈ S)
(T U : Set ℝ)
(hsub : T ⊆ S ∧ U ⊆ S)
(hunion : T ∪ U = S)
(hdisj : T ∩ U = ∅)
(hT3 : ∀ a ∈ T, ∀ b ∈ T, ∀ c ∈ T, a * b * c ∈ T)
(hU3 : ∀ a ∈ U, ∀ b ∈ U, ∀ c ∈ U, a * b * c ∈ U)
: (∀ a ∈ T, ∀ b ∈ T, a * b ∈ T) ∨ (∀ a ∈ U, ∀ b ∈ U, a * b ∈ U) :=
sorry

open Filter Topology Real
abbrev putnam_1995_a2_solution : Set (ℝ × ℝ) := sorry
-- {x | let ⟨a,b⟩ := x; a = b}
theorem putnam_1995_a2
(habconv : (ℝ × ℝ) → Prop := fun ⟨a,b⟩ =>
∃ limit : ℝ, Tendsto (fun t : ℝ => ∫ x in (Set.Icc b t), (sqrt (sqrt (x + a) - sqrt x) - sqrt (sqrt x - sqrt (x - b)))) atTop (𝓝 limit))
: ∀ ab : ℝ × ℝ, habconv ab ↔ ab ∈ putnam_1995_a2_solution :=
sorry

theorem putnam_1995_a3
(relation : (Fin 9 → ℤ) → (Fin 9 → ℤ) → Prop)
(digits_to_num : (Fin 9 → ℤ) → ℤ := fun dig => ∑ i : Fin 9, (dig i) * 10^i.1)
(hrelation : ∀ d e : (Fin 9 → ℤ), relation d e ↔ (∀ i : Fin 9, d i < 10 ∧ d i ≥ 0 ∧ e i < 10 ∧ e i ≥ 0) ∧ (∀ i : Fin 9, 7 ∣ (digits_to_num (fun j : Fin 9 => if j = i then e j else d j))))
: ∀ d e f : (Fin 9 → ℤ), ((relation d e) ∧ (relation e f)) → (∀ i : Fin 9, 7 ∣ d i - f i) :=
sorry

theorem putnam_1995_a4
(n : ℕ)
(hn : n > 0)
(necklace : Fin n → ℤ)
(hnecklacesum : ∑ i : Fin n, necklace i = n - 1)
: ∃ cut : Fin n, ∀ k : Fin n, ∑ i : {j : Fin n | j.1 ≤ k}, necklace (cut + i) ≤ k :=
sorry

abbrev putnam_1995_a5_solution : Prop := sorry
-- True
theorem putnam_1995_a5
(hdiffx : (n : ℕ) → (Fin n → (ℝ → ℝ)) → Prop := (fun (n : ℕ) (x : Fin n → (ℝ → ℝ)) => ∀ i : Fin n, Differentiable ℝ (x i)))
(ha : (n : ℕ) → (Fin n → Fin n → ℝ) → Prop := (fun (n : ℕ) (a : Fin n → Fin n → ℝ) => ∀ i j : Fin n, a i j > 0))
(hcomb : (n : ℕ) → (Fin n → (ℝ → ℝ)) → (Fin n → Fin n → ℝ) → Prop := (fun (n : ℕ) (x : Fin n → (ℝ → ℝ)) (a : Fin n → Fin n → ℝ) => ∀ t : ℝ, ∀ i : Fin n, (deriv (x i)) t = ∑ j : Fin n, (a i j) * ((x j) t)))
(hxlim : (n : ℕ) → (Fin n → (ℝ → ℝ)) → Prop := (fun (n : ℕ) (x : Fin n → (ℝ → ℝ)) => ∀ i : Fin n, Tendsto (x i) atTop (𝓝 0)))
: putnam_1995_a5_solution ↔ (∀ (n : ℕ) (x : Fin n → (ℝ → ℝ)) (a : Fin n → Fin n → ℝ), (n > 0 ∧ hdiffx n x ∧ ha n a ∧ hcomb n x a ∧ hxlim n x) → ¬(∀ b : Fin n → ℝ, (∀ t : ℝ, ∑ i : Fin n, (b i) * ((x i) t) = 0) → (∀ i : Fin n, b i = 0))) :=
sorry

open Nat
theorem putnam_1995_b1
(part_ct : Finpartition (Finset.range 9) → (Finset.range 9) → ℕ)
(hp : ∀ partition k, part_ct partition k = (Exists.choose (Finpartition.exists_mem partition k.2)).card)
: ∀ Pt1 Pt2 : Finpartition (Finset.range 9), ∃ x y : Finset.range 9, x ≠ y ∧ part_ct Pt1 x = part_ct Pt1 y ∧ part_ct Pt2 x = part_ct Pt2 y :=
sorry

-- Note: Boosted the domain/range of digits_set to ℕ because of membership problems in Finset.range 10
abbrev putnam_1995_b3_solution : ℕ → ℤ := sorry
-- fun n => if n = 1 then 45 else if n = 2 then 10 * 45^2 else 0
theorem putnam_1995_b3
(n : ℕ)
(hn : n > 0)
(digits_set := {f : ℕ → ℕ | f 0 ≠ 0 ∧ (∀ i : Fin (n ^ 2), f i ≤ 9) ∧ (∀ i ≥ n ^ 2, f i = 0)})
(digits_to_matrix : (ℕ → ℕ) → Matrix (Fin n) (Fin n) ℤ := fun f => (fun i j => f (i.1 * n + j.1)))
: ∑' f : digits_set, (digits_to_matrix f).det = putnam_1995_b3_solution n :=
sorry

abbrev putnam_1995_b4_solution : ℤ × ℤ × ℤ × ℤ := sorry
-- ⟨3,1,5,2⟩
theorem putnam_1995_b4
(contfrac : ℝ)
(hcontfrac : contfrac = 2207 - 1/contfrac)
: let ⟨a,b,c,d⟩ := putnam_1995_b4_solution; contfrac^((1 : ℝ)/8) = (a + b * sqrt c)/d :=
sorry

theorem putnam_1995_b6
(S : ℝ → Set ℕ := fun α => {x : ℕ | ∃ n : ℕ, n ≥ 1 ∧ x = floor (n * α)})
: ¬ ∃ α β γ : ℝ, α > 0 ∧ β > 0 ∧ γ > 0 ∧ (S α) ∩ (S β) = ∅ ∧ (S β) ∩ (S γ) = ∅ ∧ (S α) ∩ (S γ) = ∅ ∧ ℕ+ = (S α) ∪ (S β) ∪ (S γ) :=
sorry

end putnam_1995

section putnam_1994
open Filter Topology
theorem putnam_1994_a1
(a : ℕ → ℝ)
(ha : ∀ n ≥ 1, 0 < a n ∧ a n ≤ a (2 * n) + a (2 * n + 1))
: ¬(∃ s : ℝ, Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a n) atTop (𝓝 s)) :=
sorry

theorem putnam_1994_a4
(A B : Matrix (Fin 2) (Fin 2) ℤ)
(ABinv : Nonempty (Invertible A) ∧ Nonempty (Invertible (A + B)) ∧ Nonempty (Invertible (A + 2 * B)) ∧ Nonempty (Invertible (A + 3 * B)) ∧ Nonempty (Invertible (A + 4 * B)))
: Invertible (A + 5 * B) :=
sorry

theorem putnam_1994_a5
(r : ℕ → ℝ)
(S : Set ℝ)
(rpos : r > 0)
(rlim : Tendsto r atTop (𝓝 0))
(hS : S = {x : ℝ | ∃ i : Fin 1994 → ℕ, (∀ j k : Fin 1994, j < k → i j < i k) ∧ (x = ∑ j : Fin 1994, r (i j))})
: ∀ a b : ℝ, a < b → (∃ c d : ℝ, a ≤ c ∧ c < d ∧ d ≤ b ∧ (Set.Ioo c d) ∩ S = ∅) :=
sorry

-- Note: uses (ℕ → Fin 10) instead of (Fin m → Fin 10)
theorem putnam_1994_a6
(f : Fin 10 → Equiv.Perm ℤ)
(mijcomp : ℕ → (ℕ → Fin 10) → ℕ → (ℤ → ℤ))
(F : Finset (ℤ → ℤ))
(hf: ∀ n : ℤ, ∃ m ≥ 1, ∃ i : ℕ → Fin 10, (mijcomp m i 0) 0 = n)
(hmijcomp : ∀ m ≥ 1, ∀ (i : ℕ → Fin 10) (j : Fin m), mijcomp m i j = if (j = m - 1) then (f (i j) : ℤ → ℤ) else (f (i j) ∘ mijcomp m i (j + 1)))
(hF : F = {g : ℤ → ℤ | ∃ e : Fin 10 → Fin 2, g = (f 0)^[e 0] ∘ (f 1)^[e 1] ∘ (f 2)^[e 2] ∘ (f 3)^[e 3] ∘ (f 4)^[e 4] ∘ (f 5)^[e 5] ∘ (f 6)^[e 6] ∘ (f 7)^[e 7] ∘ (f 8)^[e 8] ∘ (f 9)^[e 9]})
: ∀ A : Finset ℤ, A.Nonempty → {g ∈ F | g '' A = A}.encard ≤ 512 :=
sorry

abbrev putnam_1994_b1_solution : Set ℕ := sorry
-- {n : ℕ | (315 ≤ n ∧ n ≤ 325) ∨ (332 ≤ n ∧ n ≤ 350)}
theorem putnam_1994_b1
(n : ℕ)
(nwithin : Prop)
(hnwithin : nwithin = ({m : ℕ | |(n : ℤ) - m ^ 2| ≤ 250}.encard = 15))
: (n > 0 ∧ nwithin) ↔ n ∈ putnam_1994_b1_solution :=
sorry

abbrev putnam_1994_b2_solution : Set ℝ := sorry
-- {c : ℝ | c < 243 / 8}
theorem putnam_1994_b2
(c : ℝ)
(inter : Prop)
(hinter : inter = ∃ m b : ℝ, {x : ℝ | m * x + b = x ^ 4 + 9 * x ^ 3 + c * x ^ 2 + 9 * x + 4}.encard = 4)
: inter ↔ c ∈ putnam_1994_b2_solution :=
sorry

abbrev putnam_1994_b3_solution : Set ℝ := sorry
-- Set.Iio 1
theorem putnam_1994_b3
(k : ℝ)
(allfexN : Prop)
(hallfexN : allfexN = ∀ f : ℝ → ℝ, (f > 0 ∧ Differentiable ℝ f ∧ ∀ x : ℝ, deriv f x > f x) → (∃ N : ℝ, ∀ x > N, f x > Real.exp (k * x)))
: allfexN ↔ k ∈ putnam_1994_b3_solution :=
sorry

theorem putnam_1994_b4
(matgcd : Matrix (Fin 2) (Fin 2) ℤ → ℕ)
(A : Matrix (Fin 2) (Fin 2) ℤ)
(d : ℕ → ℕ)
(hmatgcd : ∀ M : Matrix (Fin 2) (Fin 2) ℤ, matgcd M = Int.gcd (Int.gcd (Int.gcd (M 0 0) (M 0 1)) (M 1 0)) (M 1 1))
(hA : A 0 0 = 3 ∧ A 0 1 = 2 ∧ A 1 0 = 4 ∧ A 1 1 = 3)
(hd : ∀ n ≥ 1, d n = matgcd (A ^ n - 1))
: Tendsto d atTop atTop :=
sorry

theorem putnam_1994_b5
(f : ℝ → ℕ → ℤ)
(n : ℕ)
(hf : ∀ (α : ℝ) (x : ℕ), f α x = Int.floor (α * x))
(npos : n > 0)
: ∃ α : ℝ, ∀ k ∈ Set.Icc 1 n, (((f α) ^ k) (n ^ 2) = n ^ 2 - k) ∧ (f (α ^ k) (n ^ 2) = n ^ 2 - k) :=
sorry

theorem putnam_1994_b6
(n : ℕ → ℤ)
(hn : ∀ a : ℕ, n a = 101 * a - 100 * 2 ^ a)
: ∀ a b c d : Set.Icc 0 99, (n a + n b ≡ n c + n d [ZMOD 10100]) → (({a, b} : Set (Set.Icc 0 99)) = {c, d}) :=
sorry

end putnam_1994

section putnam_1993

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

end putnam_1993

section putnam_1992
theorem putnam_1992_a1
(f : ℤ → ℤ)
: ((f = fun n ↦ 1 - n) ↔ (∀ n : ℤ, f (f n) = n) ∧ (∀ n : ℤ, f (f (n + 2) + 2) = n) ∧ (f 0 = 1)) :=
sorry

abbrev putnam_1992_a2_solution : ℝ := sorry
-- 1992
theorem putnam_1992_a2
(C : ℝ → ℝ := fun α ↦ taylorCoeffWithin (fun x ↦ (1 + x) ^ α) 1992 Set.univ 0)
: (∫ y in (0)..1, C (-y - 1) * ∑ k in Finset.Icc (1 : ℕ) 1992, 1 / (y + k) = putnam_1992_a2_solution) :=
sorry

open Nat

abbrev putnam_1992_a3_solution : ℕ → Set (ℕ × ℕ × ℕ) := sorry
-- fun m ↦ ite (Odd m) ∅ {(m + 1, 2 ^ (m / 2), 2 ^ (m / 2))}
theorem putnam_1992_a3
(m : ℕ)
(mpos : m > 0)
(S : Set (ℕ × ℕ × ℕ))
(hS : ∀ n x y : ℕ, (n, x, y) ∈ S ↔ n > 0 ∧ x > 0 ∧ y > 0 ∧ Coprime n m ∧ (x ^ 2 + y ^ 2) ^ m = (x * y) ^ n)
: (S = putnam_1992_a3_solution m) :=
sorry

open Function

abbrev putnam_1992_a4_solution : ℕ → ℝ := sorry
-- fun k ↦ ite (Even k) ((-1) ^ (k / 2) * factorial k) 0
theorem putnam_1992_a4
(f : ℝ → ℝ)
(hfdiff : ContDiff ℝ ⊤ f)
(hf : ∀ n : ℕ, n > 0 → f (1 / n) = n ^ 2 / (n ^ 2 + 1))
: (∀ k : ℕ, k > 0 → iteratedDeriv k f 0 = putnam_1992_a4_solution k) :=
sorry

theorem putnam_1992_a5
(a : ℕ → ℕ := fun n ↦ ite (Even {i | (digits 2 n).get i = 1}.ncard) 0 1)
: (¬∃ k > 0, ∃ m > 0, ∀ j ≤ m - 1, a (k + j) = a (k + m + j) ∧ a (k + m + j) = a (k + 2 * m + j)) :=
sorry

abbrev putnam_1992_b1_solution : ℕ → ℕ := sorry
-- fun n ↦ 2 * n - 3
theorem putnam_1992_b1
(n : ℕ)
(nge2 : n ≥ 2)
(A : Finset ℝ → Set ℝ := fun S ↦ {x | ∃ a ∈ S, ∃ b ∈ S, a ≠ b ∧ (a + b) / 2 = x})
(min : ℕ)
(hmineq : ∃ S : Finset ℝ, S.card = n ∧ min = (A S).ncard)
(hminlb : ∀ S : Finset ℝ, S.card = n → min ≤ (A S).ncard)
: (min = putnam_1992_b1_solution n) :=
sorry

open Polynomial

theorem putnam_1992_b2
(Q : ℕ → ℕ → ℕ := fun n k ↦ coeff ((1 + X + X ^ 2 + X ^ 3) ^ n) k)
: (∀ n k : ℕ, Q n k = ∑ j : Finset.range (k + 1), choose n j * choose n (k - 2 * j)) :=
sorry

abbrev putnam_1992_b4_solution : ℕ := sorry
-- 3984
theorem putnam_1992_b4
(valid : Polynomial ℝ → Prop := fun p ↦ p ≠ 0 ∧ p.degree < 1992 ∧ IsCoprime p (X ^ 3 - X))
(pair : Polynomial ℝ → Polynomial ℝ → Prop := fun p f ↦ ∃ g : Polynomial ℝ, iteratedDeriv 1992 (fun x ↦ p.eval x / (x ^ 3 - x)) = fun x ↦ f.eval x / g.eval x)
(min : ℕ)
(hmineq : ∃ p f : Polynomial ℝ, (valid p ∧ pair p f) ∧ min = f.degree)
(hminlb : ∀ p f : Polynomial ℝ, (valid p ∧ pair p f) → min ≤ f.degree)
: (min = putnam_1992_b4_solution) :=
sorry

abbrev putnam_1992_b5_solution : Prop := sorry
-- False
theorem putnam_1992_b5
(D : ℕ → ℚ := fun n ↦ Matrix.det (fun i j : Fin (n - 1) ↦ ite (i = j) (i + 3) 1))
: ((Bornology.IsBounded {x | ∃ n ≥ 2, D n / factorial n = x}) ↔ putnam_1992_b5_solution) :=
sorry

theorem putnam_1992_b6
(n : ℕ)
(npos : n > 0)
(M : Set (Matrix (Fin n) (Fin n) ℝ))
(h1 : 1 ∈ M)
(h2 : ∀ A ∈ M, ∀ B ∈ M, Xor' (A * B ∈ M) (-A * B ∈ M))
(h3 : ∀ A ∈ M, ∀ B ∈ M, (A * B = B * A) ∨ (A * B = -B * A))
(h4 : ∀ A ∈ M, A ≠ 1 → ∃ B ∈ M, A * B = -B * A)
: (M.encard ≤ n ^ 2) :=
sorry

end putnam_1992

section putnam_1991
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

abbrev putnam_1991_b1_solution : Set ℕ := sorry
-- {A : ℕ | ∃ x > 0, A = x ^ 2}
theorem putnam_1991_b1
(m : ℕ → ℕ)
(S : ℕ → ℕ)
(A : ℕ)
(a : ℕ → ℕ)
(hm : ∀ n : ℕ, (m n) ^ 2 ≤ n ∧ (∀ m' : ℕ, m' ^ 2 ≤ n → m' ≤ m n))
(hS : ∀ n : ℕ, S n = n - (m n) ^ 2)
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

end putnam_1991

section putnam_1990
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

end putnam_1990

section putnam_1989

abbrev putnam_1989_a1_solution : ℕ := sorry
-- 1
theorem putnam_1989_a1
(pdigalt : List ℕ → Prop)
(hpdigalt : ∀ pdig : List ℕ, pdigalt pdig = Odd pdig.length ∧ (∀ i : Fin pdig.length, pdig.get i = if Even (i : ℕ) then 1 else 0))
: {p : ℕ | p > 0 ∧ p.Prime ∧ pdigalt (Nat.digits 10 p)}.encard = putnam_1989_a1_solution :=
sorry

noncomputable abbrev putnam_1989_a2_solution : ℝ → ℝ → ℝ := sorry
-- (fun a b : ℝ => (Real.exp (a ^ 2 * b ^ 2) - 1) / (a * b))
theorem putnam_1989_a2
(a b : ℝ)
(abpos : a > 0 ∧ b > 0)
: ∫ x in Set.Ioo 0 a, ∫ y in Set.Ioo 0 b, Real.exp (max (b ^ 2 * x ^ 2) (a ^ 2 * y ^ 2)) = putnam_1989_a2_solution a b :=
sorry

theorem putnam_1989_a3
(z : ℂ)
(hz : 11 * z ^ 10 + 10 * I * z ^ 9 + 10 * I * z - 11 = 0)
: (‖z‖ = 1) :=
sorry

open Nat

theorem putnam_1989_a6
(F : Type*) [Field F] [Fintype F]
(hF : Fintype.card F = 2)
(α : PowerSeries F)
(hα : ∀ n : ℕ, let bin := [1] ++ (digits 2 n) ++ [1]; PowerSeries.coeff F n α = ite (∀ i j : Fin bin.length, i < j → bin.get i = 1 → bin.get j = 1 → (∀ k, i < k → k < j → bin.get k = 0) → Even ((j : ℕ) - (i : ℕ) - 1)) 1 0)
: (α ^ 3 + PowerSeries.X * α + 1 = 0) :=
sorry

-- This formalization uses "Type" rather than "Type*" as the underlying structure for a semigroup.
abbrev putnam_1989_b2_solution : Prop := sorry
-- True
theorem putnam_1989_b2
(pow : (S : Type) → ℕ → S → S)
(hpow1 : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, pow S 1 s = s)
(hpown : ∀ (S : Type) (_ : Semigroup S), ∀ s : S, ∀ n > 0, pow S (n + 1) s = s * (pow S n s))
: ((∀ (S : Type) (_ : Nonempty S) (_ : Semigroup S) (_ : IsCancelMul S), (∀ a : S, Finite {x | ∃ n : ℕ, n > 0 ∧ pow S n a = x}) → ∃ (_ : Group S), True) ↔ putnam_1989_b2_solution) :=
sorry

open Filter Topology

noncomputable abbrev putnam_1989_b3_solution : ℕ → ℝ → ℝ := sorry
-- fun n c ↦ c * factorial n / (3 ^ n * ∏ m in Finset.Icc (1 : ℤ) n, (1 - 2 ^ (-m)))
theorem putnam_1989_b3
(f : ℝ → ℝ)
(hfdiff : Differentiable ℝ f)
(hfderiv : ∀ x > 0, deriv f x = -3 * f x + 6 * f (2 * x))
(hdecay : ∀ x ≥ 0, |f x| ≤ Real.exp (-Real.sqrt x))
(μ : ℕ → ℝ := fun n ↦ ∫ x in Set.Ioi 0, x ^ n * (f x))
: ((∀ n : ℕ, μ n = putnam_1989_b3_solution n (μ 0)) ∧ (∃ L : ℝ, Tendsto (fun n ↦ (μ n) * 3 ^ n / factorial n) ⊤ (𝓝 L)) ∧ (Tendsto (fun n ↦ (μ n) * 3 ^ n / factorial n) ⊤ (𝓝 0) → μ 0 = 0)) :=
sorry

open Set

abbrev putnam_1989_b4_solution : Prop := sorry
-- True
theorem putnam_1989_b4
: ((∃ S : Type, Countable S ∧ Infinite S ∧ ∃ C : Set (Set S), ¬Countable C ∧ (∀ R ∈ C, R ≠ ∅) ∧ (∀ A ∈ C, ∀ B ∈ C, A ≠ B → (A ∩ B).Finite)) ↔ putnam_1989_b4_solution) :=
sorry

end putnam_1989

section putnam_1988

open Set

abbrev putnam_1988_a2_solution : Prop := sorry
-- True
theorem putnam_1988_a2
(f : ℝ → ℝ := fun x ↦ Real.exp (x ^ 2))
: ((∃ a b : ℝ, a < b ∧ ∃ g : ℝ → ℝ, (∃ x ∈ Ioo a b, g x ≠ 0) ∧ DifferentiableOn ℝ g (Ioo a b) ∧ ∀ x ∈ Ioo a b, deriv (fun y ↦ f y * g y) x = (deriv f x) * (deriv g x)) ↔ putnam_1988_a2_solution) :=
sorry

open Filter Topology

abbrev putnam_1988_a3_solution : Set ℝ := sorry
-- {x | x > 1 / 2}
theorem putnam_1988_a3
: ({x : ℝ | ∃ L : ℝ, Tendsto (fun t ↦ ∑ n in Finset.Icc (1 : ℕ) t, (((1 / n) / Real.sin (1 / n) - 1) ^ x)) ⊤ (𝓝 L)} = putnam_1988_a3_solution) :=
sorry


abbrev putnam_1988_a4_solution : Prop × Prop := sorry
-- (True, False)
theorem putnam_1988_a4
(p : ℕ → Prop := fun n ↦ ∀ color : (Fin 2 → ℝ) → Fin n, ∃ p q : Fin 2 → ℝ, color p = color q ∧ Euclidean.dist p q = 1)
: (let (a, b) := putnam_1988_a4_solution; (p 3 ↔ a) ∧ (p 9 ↔ b)) :=
sorry

theorem putnam_1988_a5
: (∃ f : ℝ → ℝ, (∀ x > 0, f (f x) = 6 * x - f x ∧ f x > 0) ∧ (∀ g : ℝ → ℝ, (∀ x > 0, g (g x) = 6 * x - g x ∧ g x > 0) → (∀ x > 0, f x = g x))) :=
sorry

abbrev putnam_1988_a6_solution : Prop := sorry
-- True
theorem putnam_1988_a6
: (∀ (F V : Type*) (_ : Field F) (_ : AddCommGroup V) (_ : Module F V) (_ : FiniteDimensional F V) (n : ℕ) (A : Module.End F V) (evecs : Set V), (n = FiniteDimensional.finrank F V ∧ evecs ⊆ {v : V | ∃ f : F, A.HasEigenvector f v} ∧ evecs.encard = n + 1 ∧ (∀ sevecs : Fin n → V, (Set.range sevecs ⊆ evecs ∧ (Set.range sevecs).encard = n) → LinearIndependent F sevecs)) → (∃ c : F, A = c • LinearMap.id)) ↔ putnam_1988_a6_solution :=
sorry

theorem putnam_1988_b1
: ∀ a ≥ 2, ∀ b ≥ 2, ∃ x y z: ℤ, x > 0 ∧ y > 0 ∧ z > 0 ∧ a * b = x * y + x * z + y * z + 1 :=
sorry

abbrev putnam_1988_b2_solution : Prop := sorry
-- True
theorem putnam_1988_b2
: (∀ x y : ℝ, (y ≥ 0 ∧ y * (y + 1) ≤ (x + 1) ^ 2) → (y * (y - 1) ≤ x ^ 2)) ↔ putnam_1988_b2_solution :=
sorry

noncomputable abbrev putnam_1988_b3_solution : ℝ := sorry
-- (1 + Real.sqrt 3) / 2
theorem putnam_1988_b3
(r : ℕ → ℝ)
(hr : ∀ n ≥ 1, (∃ c d : ℕ, c + d = n ∧ r n = |c - d * Real.sqrt 3|) ∧ (∀ c d : ℕ, c + d = n → |c - d * Real.sqrt 3| ≥ r n))
: putnam_1988_b3_solution > 0 ∧ (∀ n ≥ 1, r n ≤ putnam_1988_b3_solution) ∧ (∀ g > 0, (∀ n ≥ 1, r n ≤ g) → g ≥ putnam_1988_b3_solution) :=
sorry

open Topology Filter
theorem putnam_1988_b4
(a : ℕ → ℝ)
(appos : (ℕ → ℝ) → Prop)
(apconv : (ℕ → ℝ) → Prop)
(apposconv : (ℕ → ℝ) → Prop)
(happos : ∀ a' : ℕ → ℝ, appos a' = ∀ n ≥ 1, a' n > 0)
(hapconv : ∀ a' : ℕ → ℝ, apconv a' = ∃ s : ℝ, Tendsto (fun N : ℕ => ∑ n : Set.Icc 1 N, a' n) atTop (𝓝 s))
(happosconv : ∀ a' : ℕ → ℝ, apposconv a' = (appos a' ∧ apconv a'))
: apposconv a → apposconv (fun n : ℕ => (a n) ^ ((n : ℝ) / (n + 1))) :=
sorry

abbrev putnam_1988_b5_solution : ℕ → ℕ := sorry
-- (fun n : ℕ => 2 * n)
theorem putnam_1988_b5
(n : ℕ)
(Mn : Matrix (Fin (2 * n + 1)) (Fin (2 * n + 1)) ℝ)
(npos : n > 0)
(Mnskewsymm : ∀ i j : Fin (2 * n + 1), Mn i j = -(Mn j i))
(hMn1 : ∀ i j : Fin (2 * n + 1), (1 ≤ i - j ∧ i - j ≤ n) → Mn i j = 1)
(hMnn1 : ∀ i j : Fin (2 * n + 1), i - j > n → Mn i j = -1)
: Mn.rank = putnam_1988_b5_solution n :=
sorry

theorem putnam_1988_b6
(trinums : Set ℤ)
(htrinums : trinums = {t : ℤ | ∃ n : ℕ, t = (n * (n + 1)) / 2})
: {(a, b) : ℤ × ℤ | ∀ t > 0, (a * t + b) ∈ trinums ↔ t ∈ trinums}.encard = ⊤ :=
sorry

end putnam_1988

section putnam_1987

theorem putnam_1987_a1
(A B C D : Set (ℝ × ℝ))
(hA : A = {(x, y) : ℝ × ℝ | x ^ 2 - y ^ 2 = x / (x ^ 2 + y ^ 2)})
(hB : B = {(x, y) : ℝ × ℝ | 2 * x * y + y / (x ^ 2 + y ^ 2) = 3})
(hC : C = {(x, y) : ℝ × ℝ | x ^ 3 - 3 * x * y ^ 2 + 3 * y = 1})
(hD : D = {(x, y) : ℝ × ℝ | 3 * x ^ 2 * y - 3 * x - y ^ 3 = 0})
: A ∩ B = C ∩ D := sorry

abbrev putnam_1987_a2_solution : ℕ := sorry
-- 1984
theorem putnam_1987_a2
(seqind : ℕ → ℕ)
(seqsize : ℕ → ℕ)
(f : ℕ → ℕ)
(hseqind : seqind 1 = 1 ∧ ∀ i ≥ 2, seqind i = seqind (i - 1) + (Nat.digits 10 (i - 1)).length)
(hseqsize : ∀ i ≥ 1, ∀ j : Fin ((Nat.digits 10 i).length), seqsize (seqind i + j) = (Nat.digits 10 i).length)
(hf : ∀ n : ℕ, f n = seqsize (10 ^ n))
: f 1987 = putnam_1987_a2_solution :=
sorry


open MvPolynomial Real

noncomputable abbrev putnam_1987_a4_solution : ℂ := sorry
-- (5 / 3) * sqrt 30
theorem putnam_1987_a4
(P : MvPolynomial (Fin 3) ℂ)
(hPreal : ∀ i : Fin 3 →₀ ℕ, (coeff i P).im = 0)
(F : ℝ → ℝ → ℝ)
(vars : ℂ → ℂ → ℂ → (Fin 3 → ℂ) := fun a b c ↦ fun i ↦ ite (i = 0) a (ite (i = 1) b c))
(h : ∀ x y z u : ℝ, eval (vars (u * x) (u * y) (u * z)) P = u ^ 2 * F (y - x) (z - x))
(hPval : eval (vars 1 0 0) P = 4 ∧ eval (vars 0 1 0) P = 5 ∧ eval (vars 0 0 1) P = 6)
(A B C : ℂ)
(hPABC : eval (vars A B C) P = 0)
(habs : ‖B - A‖ = 10)
: (‖C - A‖ = putnam_1987_a4_solution) :=
sorry

open Nat Real

abbrev putnam_1987_a6_solution : Set ℝ := sorry
-- {x : ℝ | x > 0 ∧ x < 25}
theorem putnam_1987_a6
(a : ℕ → ℕ := fun n ↦ {i | (digits 3 n).get i = 0}.ncard)
: ({x : ℝ | x > 0 ∧ Summable (fun n ↦ x ^ (a n) / (n ^ 3))} = putnam_1987_a6_solution) :=
sorry

abbrev putnam_1987_b1_solution : ℝ := sorry
-- 1
theorem putnam_1987_b1
: (∫ x in (2)..4, sqrt (log (9 - x)) / (sqrt (log (9 - x)) + sqrt (log (x + 3))) = putnam_1987_b1_solution) :=
sorry

open Nat

theorem putnam_1987_b2
(r s t : ℕ)
(hsum : r + s ≤ t)
: (∑ i : Finset.range (s + 1), (choose s i : ℚ) / (choose t (r + i)) = ((t + 1) : ℚ) / ((t + 1 - s) * choose (t - s) r)) :=
sorry

open Filter Topology

abbrev putnam_1987_b4_solution : Prop × ℝ × Prop × ℝ := sorry
-- (True, -1, True, 0)
theorem putnam_1987_b4
(x y : ℕ → ℝ)
(hxy1 : (x 1, y 1) = (0.8, 0.6))
(hx : ∀ n ≥ 1, x (n + 1) = (x n) * cos (y n) - (y n) * sin (y n))
(hy : ∀ n ≥ 1, y (n + 1) = (x n) * sin (y n) + (y n) * cos (y n))
: let (existsx, limx, existsy, limy) := putnam_1987_b4_solution
(((∃ c : ℝ, Tendsto x ⊤ (𝓝 c)) → existsx) ∧ (existsx → Tendsto x ⊤ (𝓝 limx)) ∧ ((∃ c : ℝ, Tendsto y ⊤ (𝓝 c)) → existsy) ∧ (existsy → Tendsto y ⊤ (𝓝 limy))) :=
sorry

theorem putnam_1987_b5
(n : ℕ)
(npos : n > 0)
(O : Matrix (Fin 1) (Fin n) ℂ := 0)
(M : Matrix (Fin (2 * n)) (Fin n) ℂ)
(hM : ∀ z : Matrix (Fin 1) (Fin (2 * n)) ℂ, z * M = O → (¬∀ i : Fin (2 * n), z 0 i = 0) → ∃ i : Fin (2 * n), (z 0 i).im ≠ 0)
: (∀ r : Matrix (Fin (2 * n)) (Fin 1) ℝ, ∃ w : Matrix (Fin n) (Fin 1) ℂ, ∀ i : (Fin (2 * n)), ((M * w) i 0).re = r i 0) :=
sorry

theorem putnam_1987_b6
(p : ℕ)
(podd : Odd p ∧ Nat.Prime p)
(F : Type*) [Field F] [Fintype F]
(Fcard : Fintype.card F = p ^ 2)
(S : Set F)
(Snz : ∀ x ∈ S, x ≠ 0)
(Scard : S.ncard = (p ^ 2 - 1) / 2)
(hS : ∀ a : F, a ≠ 0 → Xor' (a ∈ S) (-a ∈ S))
(N : ℕ := (S ∩ {x | ∃ a ∈ S, x = 2 * a}).ncard)
: (Even N) :=
sorry

end putnam_1987

section putnam_1986

abbrev putnam_1986_a1_solution : ℝ := sorry
-- 18
theorem putnam_1986_a1
(S : Set ℝ := {x : ℝ | x ^ 4 + 36 ≤ 13 * x ^ 2})
(f : ℝ → ℝ := fun x ↦ x ^ 3 - 3 * x)
: (∀ x ∈ S, f x ≤ putnam_1986_a1_solution ∧ ∃ x ∈ S, f x = putnam_1986_a1_solution) :=
sorry

abbrev putnam_1986_a2_solution : ℕ := sorry
-- 3
theorem putnam_1986_a2
: (Nat.floor ((10 ^ 20000 : ℝ) / (10 ^ 100 + 3)) % 10 = putnam_1986_a2_solution) :=
sorry

open  Real
noncomputable abbrev putnam_1986_a3_solution : ℝ := sorry
-- Real.pi / 2
theorem putnam_1986_a3
(cot : ℝ → ℝ := fun θ ↦ cos θ / sin θ)
(arccot : ℝ → ℝ)
(harccot : ∀ t : ℝ, t ≥ 0 → arccot t ∈ Set.Ioc 0 (Real.pi / 2) ∧ cot (arccot t) = t)
: (∑' n : ℕ, arccot (n ^ 2 + n + 1) = putnam_1986_a3_solution) :=
sorry

open Equiv

abbrev putnam_1986_a4_solution : ℚ × ℚ × ℚ × ℚ × ℚ × ℚ × ℚ := sorry
-- (1, 4, 2, 3, -4, 2, 1)
theorem putnam_1986_a4
(f : ℕ → ℕ := {A : Matrix (Fin n) (Fin n) ℤ | (∀ i j : Fin n, A i j ∈ ({-1, 0, 1} : Set ℤ)) ∧ ∃ S : ℤ, ∀ ϕ : Perm (Fin n), ∑ i : Fin n, A i (ϕ i) = S}.ncard)
: let (a1, b1, a2, b2, a3, b3, a4) := putnam_1986_a4_solution;
(∀ n > 0, f n = a1 * b1 ^ n + a2 * b2 ^ n + a3 * b3 ^ n + a4) :=
sorry


noncomputable abbrev putnam_1986_a6_solution : (ℕ → ℕ) → ℕ → ℝ := sorry
-- fun b n ↦ (∏ i : Finset.Icc 1 n, b i) / Nat.factorial n
theorem putnam_1986_a6
(n : ℕ)
(npos : n > 0)
(a : ℕ → ℝ)
(b : ℕ → ℕ)
(bpos : ∀ i ∈ Finset.Icc 1 n, b i > 0)
(binj : ∀ i ∈ Finset.Icc 1 n, ∀ j ∈ Finset.Icc 1 n, b i = b j → i = j)
(f : Polynomial ℝ)
(hf : ∀ x : ℝ, (1 - x) ^ n * f.eval x = 1 + ∑ i : Finset.Icc 1 n, (a i) * x ^ (b i))
: (f.eval 1 = putnam_1986_a6_solution b n) :=
sorry

noncomputable abbrev putnam_1986_b2_solution : Finset (ℂ × ℂ × ℂ) := sorry
-- {(0, 0, 0), (0, -1, 1), (1, 0, -1), (-1, 1, 0)}
theorem putnam_1986_b2
: ({T : ℂ × ℂ × ℂ | ∃ x y z : ℂ, T = (x - y, y - z, z - x) ∧ x * (x - 1) + 2 * y * z = y * (y - 1) + 2 * z * x ∧ y * (y - 1) + 2 * z * x = z * (z - 1) + 2 * x * y} = putnam_1986_b2_solution) :=
sorry

open Polynomial

theorem putnam_1986_b3
(cong : Polynomial ℤ → Polynomial ℤ → ℤ → Prop := fun f g m ↦ ∀ i : ℕ, m ∣ (f - g).coeff i)
(n p : ℕ)
(nppos : n > 0 ∧ p > 0)
(pprime : Nat.Prime p)
(f g h r s : Polynomial ℤ)
(hcoprime : cong (r * f + s * g) 1 p)
(hprod : cong (f * g) h p)
: (∃ F G : Polynomial ℤ, cong F f p ∧ cong G g p ∧ cong (F * G) h (p ^ n)) :=
sorry

open Filter Topology

abbrev putnam_1986_b4_solution : Prop := sorry
-- True
theorem putnam_1986_b4
(G : ℝ → ℝ)
(hGeq : ∀ r : ℝ, ∃ m n : ℤ, G r = |r - sqrt (m ^ 2 + 2 * n ^ 2)|)
(hGlb : ∀ r : ℝ, ∀ m n : ℤ, G r ≤ |r - sqrt (m ^ 2 + 2 * n ^ 2)|)
: (Tendsto G ⊤ (𝓝 0) ↔ putnam_1986_b4_solution) :=
sorry

open MvPolynomial

abbrev putnam_1986_b5_solution : Prop := sorry
-- False
theorem putnam_1986_b5
(f : MvPolynomial (Fin 3) ℝ := (X 0) ^ 2 + (X 1) ^ 2 + (X 2) ^ 2 + (X 0) * (X 1) * (X 2))
(perms : Set (Set (MvPolynomial (Fin 3) ℝ)) := {{X 0, X 1, X 2}, {X 0, -X 1, -X 2}, {-X 0, X 1, -X 2}, {-X 0, -X 1, X 2}})
: ((∀ pqr : Fin 3 → MvPolynomial (Fin 3) ℝ, (∀ xyz : Fin 3 → ℝ, MvPolynomial.eval (fun i ↦ MvPolynomial.eval xyz (pqr i)) f = MvPolynomial.eval xyz f) → ({pqr 0, pqr 1, pqr 2} ∈ perms)) ↔ putnam_1986_b5_solution) :=
sorry

open Matrix

theorem putnam_1986_b6
(n : ℕ)
(npos : n > 0)
(F : Type*) [Field F]
(A B C D : Matrix (Fin n) (Fin n) F)
(hsymm : IsSymm (A * Bᵀ) ∧ IsSymm (C * Dᵀ))
(hid : A * Dᵀ - B * Cᵀ = 1)
: (Aᵀ * D - Cᵀ * B = 1) :=
sorry

end putnam_1986

section putnam_1985
open Set

abbrev putnam_1985_a1_solution : ℕ × ℕ × ℕ × ℕ := sorry
-- (10, 10, 0, 0)
theorem putnam_1985_a1
: (let (a, b, c, d) := putnam_1985_a1_solution; {(A1, A2, A3) : Set ℤ × Set ℤ × Set ℤ | A1 ∪ A2 ∪ A3 = Icc 1 10 ∧ A1 ∩ A2 ∩ A3 = ∅}.ncard = 2 ^ a * 3 ^ b * 5 ^ c * 7 ^ d) :=
sorry

open Filter Topology Real

noncomputable abbrev putnam_1985_a3_solution : ℝ → ℝ := sorry
-- fun d ↦ exp d - 1
theorem putnam_1985_a3
(d : ℝ)
(a : ℕ → ℕ → ℝ)
(ha0 : ∀ m : ℕ, a m 0 = d / 2 ^ m)
(ha : ∀ m : ℕ, ∀ j : ℕ, a m (j + 1) = (a m j) ^ 2 + 2 * a m j)
: (Tendsto (fun n ↦ a n n) ⊤ (𝓝 (putnam_1985_a3_solution d))) :=
sorry

abbrev putnam_1985_a4_solution : Set (Fin 100) := sorry
-- {87}
theorem putnam_1985_a4
(a : ℕ → ℕ)
(ha1 : a 1 = 3)
(ha : ∀ i ≥ 1, a (i + 1) = 3 ^ a i)
: ({k : Fin 100 | ∀ N : ℕ, ∃ i ≥ N, a i % 100 = k} = putnam_1985_a4_solution) :=
sorry

open Real

abbrev putnam_1985_a5_solution : Set ℕ := sorry
-- {3, 4, 7, 8}
theorem putnam_1985_a5
(I : ℕ → ℝ := fun m ↦ ∫ x in (0)..(2 * Real.pi), ∏ k in Finset.Icc 1 m, cos (k * x))
: ({m ∈ Finset.Icc 1 10 | I m ≠ 0} = putnam_1985_a5_solution) :=
sorry

open Polynomial

noncomputable abbrev putnam_1985_a6_solution : Polynomial ℝ := sorry
-- 6 * X ^ 2 + 5 * X + 1
theorem putnam_1985_a6
(Γ : Polynomial ℝ → ℝ := fun p ↦ ∑ k in Finset.range (p.natDegree + 1), coeff p k ^ 2)
(f : Polynomial ℝ := 3 * X ^ 2 + 7 * X + 2)
: (let g := putnam_1985_a6_solution; g.eval 0 = 1 ∧ ∀ n : ℕ, n ≥ 1 → Γ (f ^ n) = Γ (g ^ n)) :=
sorry

open Function

abbrev putnam_1985_b1_solution : Fin 5 → ℤ := sorry
-- fun i ↦ i - 2
theorem putnam_1985_b1
(p : (Fin 5 → ℤ) → (Polynomial ℝ) := fun m ↦ ∏ i : Fin 5, ((X : Polynomial ℝ) - m i))
(numnzcoeff : Polynomial ℝ → ℕ := fun p ↦ {j ∈ Finset.range (p.natDegree + 1) | coeff p j ≠ 0}.ncard)
: (Injective putnam_1985_b1_solution ∧ ∀ m : Fin 5 → ℤ, Injective m → numnzcoeff (p putnam_1985_b1_solution) ≤ numnzcoeff (p m)) :=
sorry

abbrev putnam_1985_b2_solution : ℕ → ℕ := sorry
-- fun n ↦ ite (n = 101) 99 0
theorem putnam_1985_b2
(f : ℕ → ℝ → ℝ)
(hf0x : ∀ x : ℝ, f 0 x = 1)
(hfn0 : ∀ n ≥ 1, f n 0 = 0)
(hfderiv : ∀ x : ℝ, ∀ n, deriv (f (n + 1)) x = (n + 1) * f n (x + 1))
: (∃ a : ℕ, a = f 100 1 ∧ Nat.factorization a = putnam_1985_b2_solution) :=
sorry

theorem putnam_1985_b3
(a : ℕ → ℕ → ℕ)
(apos : ∀ m n : ℕ, a m n > 0)
(ha : ∀ k : ℕ, k > 0 → {(m, n) : ℕ × ℕ | m > 0 ∧ n > 0 ∧ a m n = k}.encard = 8)
: (∃ m n, m > 0 ∧ n > 0 ∧ a m n > m * n) :=
sorry

noncomputable abbrev putnam_1985_b5_solution : ℝ := sorry
-- sqrt (Real.pi / 1985) * exp (-3970)
theorem putnam_1985_b5
(fact : ∫ x in univ, exp (- x ^ 2) = sqrt (Real.pi))
: (∫ t in Set.Ioi 0, t ^ (- (1 : ℝ) / 2) * exp (-1985 * (t + t ^ (-(1 : ℝ)))) = putnam_1985_b5_solution) :=
sorry

theorem putnam_1985_b6
(n : ℕ)
(npos : n > 0)
(G : Finset (Matrix (Fin n) (Fin n) ℝ))
(groupG : (∀ g ∈ G, ∀ h ∈ G, g * h ∈ G) ∧ 1 ∈ G ∧ (∀ g ∈ G, ∃ h ∈ G, g * h = 1))
(hG : ∑ M in G, Matrix.trace M = 0)
: (∑ M in G, M = 0) :=
sorry

end putnam_1985

section putnam_1984
abbrev putnam_1984_a2_solution : ℚ := sorry
-- 2
theorem putnam_1984_a2
: ∑' k : Set.Ici 1, (6 ^ (k : ℕ) / ((3 ^ ((k : ℕ) + 1) - 2 ^ ((k : ℕ) + 1)) * (3 ^ (k : ℕ) - 2 ^ (k : ℕ)))) = putnam_1984_a2_solution :=
sorry

open Topology Filter
noncomputable abbrev putnam_1984_a3_solution : MvPolynomial (Fin 3) ℝ := sorry
-- (MvPolynomial.X 2) ^ 2 * ((MvPolynomial.X 0) ^ 2 - (MvPolynomial.X 1) ^ 2)
theorem putnam_1984_a3
(n : ℕ)
(a b : ℝ)
(Mn : ℝ → Matrix (Fin (2 * n)) (Fin (2 * n)) ℝ)
(polyabn : Fin 3 → ℝ)
(npos : n > 0)
(aneb : a ≠ b)
(hMnx : ∀ x : ℝ, ∀ i : Fin (2 * n), (Mn x) i i = x)
(hMna : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Even ((i : ℕ) + j)) → (Mn x) i j = a)
(hMnb : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Odd ((i : ℕ) + j)) → (Mn x) i j = b)
(hpolyabn : polyabn 0 = a ∧ polyabn 1 = b ∧ polyabn 2 = n)
: Tendsto (fun x : ℝ => (Mn x).det / (x - a) ^ (2 * n - 2)) (𝓝[≠] a) (𝓝 (MvPolynomial.eval polyabn putnam_1984_a3_solution)) :=
sorry

open Nat
abbrev putnam_1984_a5_solution : ℕ × ℕ × ℕ × ℕ × ℕ := sorry
-- (1, 9, 8, 4, 25)
theorem putnam_1984_a5
(R : Set (Fin 3 → ℝ))
(w : (Fin 3 → ℝ) → ℝ)
(hR : R = {p : Fin 3 → ℝ | (∀ i : Fin 3, p i ≥ 0) ∧ p 0 + p 1 + p 2 ≤ 1})
(hw : ∀ p : Fin 3 → ℝ, w p = 1 - p 0 - p 1 - p 2)
: let (a, b, c, d, n) := putnam_1984_a5_solution; a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0 ∧ n > 0 ∧ (∫ p in R, (p 0) ^ 1 * (p 1) ^ 9 * (p 2) ^ 8 * (w p) ^ 4 = ((a)! * (b)! * (c)! * (d)! : ℝ) / (n)!) :=
sorry

open Nat
-- Note: uses (ℕ → ℕ) instead of (Fin k → ℕ)
abbrev putnam_1984_a6_solution : Prop × ℕ := sorry
-- (True, 4)
theorem putnam_1984_a6
(lastnzdig : List ℕ → ℕ)
(f : ℕ → ℕ)
(kadistinct : ℕ → (ℕ → ℕ) → Prop := fun k : ℕ => fun a : ℕ → ℕ => (k ≥ 1 ∧ ∀ i j : Fin k, i ≠ j → a i ≠ a j))
(gpeq : (ℕ → ℕ) → ℕ → Prop := fun g : ℕ → ℕ => fun p : ℕ => (p > 0 ∧ ∀ s ≥ 1, g s = g (s + p)))
(hlastnzdig : ∀ digs : List ℕ, (∃ i : Fin digs.length, digs[i] ≠ 0) → lastnzdig digs ≠ 0 ∧ (∃ i : Fin digs.length, digs[i] = lastnzdig digs ∧ ∀ j < i, digs[j] = 0))
(hf : ∀ n > 0, f n = lastnzdig (Nat.digits 10 (n)!))
: ∃ g : ℕ → ℕ, (∀ (k : ℕ) (a : ℕ → ℕ), kadistinct k a → g (∑ i : Fin k, a i) = f (∑ i : Fin k, 5 ^ (a i))) ∧
(if putnam_1984_a6_solution.1 = True then (gpeq g putnam_1984_a6_solution.2 ∧ ∀ p : ℕ, gpeq g p → p ≥ putnam_1984_a6_solution.2) else (¬∃ p : ℕ, gpeq g p)) :=
sorry


-- Note: This problem may have multiple correct answers.
noncomputable abbrev putnam_1984_b1_solution : Polynomial ℝ × Polynomial ℝ := sorry
-- (Polynomial.X + 3, -Polynomial.X - 2)
theorem putnam_1984_b1
(f : ℕ → ℕ)
(hf : ∀ n > 0, f n = ∑ i : Set.Icc 1 n, (i)!)
: let (P, Q) := putnam_1984_b1_solution; ∀ n ≥ 1, f (n + 2) = P.eval (n : ℝ) * f (n + 1) + Q.eval (n : ℝ) * f n :=
sorry

abbrev putnam_1984_b2_solution : ℝ := sorry
-- 8
theorem putnam_1984_b2
(f : ℝ → ℝ → ℝ)
(hf : ∀ u v : ℝ, f u v = (u - v) ^ 2 + (Real.sqrt (2 - u ^ 2) - 9 / v) ^ 2)
: (∃ u : Set.Ioo 0 (Real.sqrt 2), ∃ v > 0, f u v = putnam_1984_b2_solution) ∧ (∀ u : Set.Ioo 0 (Real.sqrt 2), ∀ v > 0, f u v ≥ putnam_1984_b2_solution) :=
sorry

abbrev putnam_1984_b3_solution : Prop := sorry
-- True
theorem putnam_1984_b3
: (∀ (F : Type*) (_ : Fintype F), Fintype.card F ≥ 2 → (∃ mul : F → F → F, ∀ x y z : F, (mul x z = mul y z → x = y) ∧ (mul x (mul y z) ≠ mul (mul x y) z))) ↔ putnam_1984_b3_solution :=
sorry

open Nat
noncomputable abbrev putnam_1984_b5_solution : ℤ × Polynomial ℝ × Polynomial ℕ := sorry
-- (2, (Polynomial.X * (Polynomial.X - 1)) / 2, Polynomial.X)
theorem putnam_1984_b5
(sumbits : List ℕ → ℕ)
(d : ℕ → ℕ)
(m : ℕ)
(hsumbits : ∀ bits : List ℕ, sumbits bits = ∑ i : Fin bits.length, bits[i])
(hd : ∀ k : ℕ, d k = sumbits (Nat.digits 2 k))
(mpos : m > 0)
: let (a, f, g) := putnam_1984_b5_solution; ∑ k : Set.Icc 0 (2 ^ m - 1), (-(1 : ℤ)) ^ (d k) * (k : ℕ) ^ m = (-1) ^ m * (a : ℝ) ^ (f.eval (m : ℝ)) * (g.eval m)! :=
sorry

end putnam_1984

section putnam_1983

abbrev putnam_1983_a1_solution : ℕ := sorry
-- 2301
theorem putnam_1983_a1
: {n : ℕ | n > 0 ∧ (n ∣ 10 ^ 40 ∨ n ∣ 20 ^ 30)}.encard = putnam_1983_a1_solution :=
sorry

theorem putnam_1983_a3
(p : ℕ)
(F : ℕ → ℕ)
(poddprime : Odd p ∧ p.Prime)
(hF : ∀ n : ℕ, F n = ∑ i in Finset.range (p - 1), (i + 1) * n ^ i)
: ∀ a b : Fin p, a ≠ b → ¬(F a ≡ F b [MOD p]) :=
sorry

open Nat

theorem putnam_1983_a4
(k : ℕ)
(kpos : k > 0)
(m : ℕ := 6 * k - 1)
(S : ℤ := ∑ j in Finset.Icc 1 (2 * k - 1), (-1) ^ (j + 1) * choose m (3 * j - 1))
: (S ≠ 0) :=
sorry

abbrev putnam_1983_a5_solution : Prop := sorry
-- True
theorem putnam_1983_a5
: ((∃ α : ℝ, α > 0 ∧ ∀ n : ℕ, n > 0 → Even (⌊α ^ n⌋ - n)) ↔ putnam_1983_a5_solution) :=
sorry

open Filter Topology Real

noncomputable abbrev putnam_1983_a6_solution : ℝ := sorry
-- 2 / 9
theorem putnam_1983_a6
(F : ℝ → ℝ := fun a ↦ (a ^ 4 / exp (a ^ 3)) * ∫ x in (0)..a, ∫ y in (0)..(a - x), exp (x ^ 3 + y ^ 3))
: (Tendsto F ⊤ (𝓝 putnam_1983_a6_solution)) :=
sorry

abbrev putnam_1983_b2_solution : Prop := sorry
-- True
theorem putnam_1983_b2
(f : ℕ+ → ℕ := fun n ↦ {M : Multiset ℕ | (∀ m ∈ M, ∃ k : ℕ, m = 2 ^ k) ∧ (∀ m ∈ M, M.count m ≤ 3) ∧ M.sum = n}.ncard)
: ((∃ p : Polynomial ℝ, ∀ n : ℕ+, ⌊p.eval (n : ℝ)⌋ = f n) ↔ putnam_1983_b2_solution) :=
sorry

theorem putnam_1983_b4
(f : ℕ → ℕ := fun n ↦ n + Nat.floor (Real.sqrt n))
(a : ℕ → ℕ)
(ha0 : a 0 > 0)
(han : ∀ n : ℕ, a (n + 1) = f (a n))
: (∃ i : ℕ, ∃ s : ℕ, a i = s ^ 2) :=
sorry

noncomputable abbrev putnam_1983_b5_solution : ℝ := sorry
-- log (4 / Real.pi)
theorem putnam_1983_b5
(dist : ℝ → ℝ := fun x ↦ min (x - ⌊x⌋) (⌈x⌉ - x))
(fact : Tendsto (fun N ↦ ∏ n in Finset.Icc 1 N, (2 * n / (2 * n - 1)) * (2 * n / (2 * n + 1)) : ℕ → ℝ) ⊤ (𝓝 (Real.pi / 2)))
: (Tendsto (fun n ↦ (1 / n) * ∫ x in (1)..n, dist (n / x) : ℕ → ℝ) ⊤ (𝓝 putnam_1983_b5_solution)) :=
sorry

open Polynomial

theorem putnam_1983_b6
(n : ℕ)
(npos : n > 0)
(α : ℂ)
(hα : α ^ (2 ^ n + 1) - 1 = 0 ∧ α ≠ 1)
: (∃ p q : Polynomial ℤ, (aeval α p) ^ 2 + (aeval α q) ^ 2 = -1) :=
sorry

end putnam_1983

section putnam_1982
open Set Function Filter Topology Polynomial

abbrev putnam_1982_a2_solution : Prop := sorry
-- True
theorem putnam_1982_a2
(B : ℕ → ℝ → ℝ := fun n x ↦ ∑ k in Finset.Icc 1 n, k ^ x)
(f : ℕ → ℝ := fun n ↦ B n (logb n 2) / (n * logb 2 n) ^ 2)
: (∃ L : ℝ, Tendsto (fun N ↦ ∑ j in Finset.Icc 2 N, f j) ⊤ (𝓝 L)) ↔ putnam_1982_a2_solution :=
sorry

noncomputable abbrev putnam_1982_a3_solution : ℝ := sorry
-- (Real.pi / 2) * log Real.pi
theorem putnam_1982_a3
: (Tendsto (fun t ↦ ∫ x in (0)..t, (arctan (Real.pi * x) - arctan x) / x) ⊤ (𝓝 putnam_1982_a3_solution)) :=
sorry

theorem putnam_1982_a5
(a b c d : ℕ)
(hpos : a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0)
(hac : a + c ≤ 1982)
(hfrac : (a : ℝ) / b + (c : ℝ) / d < 1)
: (1 - (a : ℝ) / b - (c : ℝ) / d > 1 / 1983 ^ 3) :=
sorry

abbrev putnam_1982_a6_solution : Prop := sorry
-- False
theorem putnam_1982_a6
(S : Set ℕ := Ici 1)
(hb : (ℕ → ℕ) → Prop := fun b : ℕ → ℕ => BijOn b S S)
(hx : (ℕ → ℝ) → Prop := fun x : ℕ → ℝ => StrictAntiOn (fun n : ℕ => |x n|) S)
(limb : (ℕ → ℕ) × (ℕ → ℝ) → Prop := fun (b, x) => Tendsto (fun n : ℕ => |b n - (n : ℤ)| * |x n|) atTop (𝓝 0))
(limx : (ℕ → ℝ) → Prop := fun x : ℕ → ℝ => Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x k) atTop (𝓝 1))
: (∀ b : ℕ → ℕ, ∀ x : ℕ → ℝ, hb b ∧ hx x ∧ limb (b, x) ∧ limx x →
Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x (b k)) atTop (𝓝 1)) ↔ putnam_1982_a6_solution :=
sorry

open Polynomial

noncomputable abbrev putnam_1982_b2_solution : Polynomial ℝ := sorry
-- C Real.pi * (2*X - 1)^2
theorem putnam_1982_b2
(A : ℝ × ℝ → ℕ := fun (x, y) => {(m, n) : ℤ × ℤ | m^2 + n^2 ≤ x^2 + y^2}.ncard)
(g : ℝ := ∑' k : ℕ, Real.exp (-k^2))
(I : ℝ := ∫ y : ℝ, ∫ x : ℝ, A (x, y) * Real.exp (-x^2 - y^2))
: I = putnam_1982_b2_solution.eval g :=
sorry

noncomputable abbrev putnam_1982_b3_solution : ℝ := sorry
-- 4/3 * (Real.sqrt 2 - 1)
theorem putnam_1982_b3
(p : ℕ → ℝ := fun n : ℕ => {(c, d) : Finset.Icc 1 n × Finset.Icc 1 n | ∃ m : ℕ, m^2 = c + d}.card / n^2)
: Tendsto (fun n : ℕ => p n * Real.sqrt n) atTop (𝓝 putnam_1982_b3_solution) :=
sorry

abbrev putnam_1982_b4_solution : Prop × Prop := sorry
-- (True, True)
theorem putnam_1982_b4
(hn : Finset ℤ → Prop := fun n : Finset ℤ => ∀ k : ℤ, ∏ i ∈ n, i ∣ ∏ i ∈ n, (i + k))
: ((∀ n : Finset ℤ, hn n → (∃ i ∈ n, |i| = 1)) ↔ putnam_1982_b4_solution.1) ∧
((∀ n : Finset ℤ, (hn n ∧ ∀ i ∈ n, i > 0) → n = Finset.Icc (1 : ℤ) (n.card)) ↔ putnam_1982_b4_solution.2) :=
sorry

theorem putnam_1982_b5
(T : Set ℝ := Ioi (Real.exp (Real.exp 1)))
(S : ℝ → ℕ → ℝ)
(hS : ∀ x ∈ T, S x 0 = (Real.exp 1) ∧ ∀ n : ℕ, S x (n + 1) = Real.logb (S x n) x)
(g : ℝ → ℝ)
: ∀ x ∈ T, (∃ L : ℝ, Tendsto (S x) atTop (𝓝 L)) ∧
(∀ x ∈ T, Tendsto (S x) atTop (𝓝 (g x))) → ContinuousOn g T :=
sorry

end putnam_1982

section putnam_1981
open Topology Filter Set Polynomial Function

noncomputable abbrev putnam_1981_a1_solution : ℝ := sorry
-- 1/8
theorem putnam_1981_a1
(P : ℕ → ℕ → Prop := fun n : ℕ => fun k : ℕ => 5^k ∣ ∏ m ∈ Finset.Icc 1 n, m^m)
(E : ℕ → ℕ)
(hE : ∀ n ∈ Ici 1, P n (E n) ∧ ∀ k : ℕ, P n k → k ≤ E n)
: Tendsto (fun n : ℕ => ((E n) : ℝ)/n^2) atTop (𝓝 putnam_1981_a1_solution) :=
sorry

abbrev putnam_1981_a3_solution : Prop := sorry
-- False
theorem putnam_1981_a3
(f : ℝ → ℝ := fun t : ℝ => Real.exp (-t) * ∫ y in (Ico 0 t), ∫ x in (Ico 0 t), (Real.exp x - Real.exp y) / (x - y))
: (∃ L : ℝ, Tendsto f atTop (𝓝 L)) ↔ putnam_1981_a3_solution :=
sorry

abbrev putnam_1981_a5_solution : Prop := sorry
-- True
theorem putnam_1981_a5
(Q : Polynomial ℝ → Polynomial ℝ := fun P : Polynomial ℝ => (X^2 + 1)*P*(derivative P) + X*(P^2 + (derivative P)^2))
(n : Polynomial ℝ → ℝ := fun P : Polynomial ℝ => {x ∈ Ioi 1 | P.eval x = 0}.ncard)
: (∀ P : Polynomial ℝ, {x : ℝ | (Q P).eval x = 0}.ncard ≥ 2*(n P) - 1) ↔ putnam_1981_a5_solution :=
sorry

abbrev putnam_1981_b1_solution : ℝ := sorry
-- -1
theorem putnam_1981_b1
(f : ℕ → ℝ := fun n : ℕ => (1/n^5) * ∑ h in Finset.Icc 1 n, ∑ k in Finset.Icc 1 n, 5*(h : ℝ)^4 - 18*h^2*k^2 + 5*k^4)
: Tendsto f atTop (𝓝 putnam_1981_b1_solution) :=
sorry

noncomputable abbrev putnam_1981_b2_solution : ℝ := sorry
-- 12 - 8 * Real.sqrt 2
theorem putnam_1981_b2
(P : ℝ × ℝ × ℝ → Prop := fun (r, s, t) => 1 ≤ r ∧ r ≤ s ∧ s ≤ t ∧ t ≤ 4)
(f : ℝ × ℝ × ℝ → ℝ := fun (r, s, t) => (r - 1)^2 + (s/r - 1)^2 + (t/s - 1)^2 + (4/t - 1)^2)
: (∃ r : ℝ, ∃ s : ℝ, ∃ t : ℝ, P (r, s, t) ∧ f (r, s, t) = putnam_1981_b2_solution) ∧
∀ r : ℝ, ∀ s : ℝ, ∀ t : ℝ, P (r, s, t) → f (r, s, t) ≥ putnam_1981_b2_solution :=
sorry

theorem putnam_1981_b3
(P : ℕ → Prop := fun n : ℕ => ∀ p : ℕ, (Nat.Prime p ∧ p ∣ n^2 + 3) → ∃ k : ℕ, p ∣ k^2 + 3 ∧ k^2 < n)
: ∀ n : ℕ, ∃ m : ℕ, m > n ∧ P m :=
sorry

abbrev putnam_1981_b4_solution : Prop := sorry
-- False
theorem putnam_1981_b4
(VAB : Set (Matrix (Fin 5) (Fin 7) ℝ) → Prop)
(Vrank : Set (Matrix (Fin 5) (Fin 7) ℝ) → ℕ → Prop)
(hVAB : ∀ V : Set (Matrix (Fin 5) (Fin 7) ℝ), VAB V = (∀ A ∈ V, ∀ B ∈ V, ∀ r s : ℝ, r • A + s • B ∈ V))
(hVrank : ∀ (V : Set (Matrix (Fin 5) (Fin 7) ℝ)) (k : ℕ), Vrank V k = ∃ A ∈ V, A.rank = k)
: (∀ V : Set (Matrix (Fin 5) (Fin 7) ℝ), (VAB V ∧ Vrank V 0 ∧ Vrank V 1 ∧ Vrank V 2 ∧ Vrank V 4 ∧ Vrank V 5) → Vrank V 3) ↔ putnam_1981_b4_solution :=
sorry

abbrev putnam_1981_b5_solution : Prop := sorry
-- True
theorem putnam_1981_b5
(sumbits : List ℕ → ℕ)
(B : ℕ → ℕ)
(hsumbits : ∀ bits : List ℕ, sumbits bits = ∑ i : Fin bits.length, bits[i])
(hB : ∀ n > 0, B n = sumbits (Nat.digits 2 n))
: (∃ q : ℚ, Real.exp (∑' n : Set.Ici 1, B n / ((n : ℝ) * ((n : ℝ) + 1))) = q) ↔ putnam_1981_b5_solution :=
sorry

end putnam_1981

section putnam_1980

abbrev putnam_1980_a2_solution : ℕ → ℕ → ℕ := sorry
-- (fun r s : ℕ => (1 + 4 * r + 6 * r ^ 2) * (1 + 4 * s + 6 * s ^ 2))
theorem putnam_1980_a2
(r s : ℕ)
(abcdlcm : ℕ → ℕ → ℕ → ℕ → Prop)
(rspos : r > 0 ∧ s > 0)
(habcdlcm : ∀ a b c d : ℕ, abcdlcm a b c d = (a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0 ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a b) c) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a b) d) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm a c) d) ∧ (3 ^ r * 7 ^ s = Nat.lcm (Nat.lcm b c) d)))
: {(a, b, c, d) : ℕ × ℕ × ℕ × ℕ | abcdlcm a b c d}.encard = putnam_1980_a2_solution r s :=
sorry

noncomputable abbrev putnam_1980_a3_solution : ℝ := sorry
-- Real.pi / 4
theorem putnam_1980_a3
: ∫ x in Set.Ioo 0 (Real.pi / 2), 1 / (1 + (Real.tan x) ^ (Real.sqrt 2)) = putnam_1980_a3_solution :=
sorry

theorem putnam_1980_a4
(abcvals : ℤ → ℤ → ℤ → Prop)
(habcvals : ∀ a b c : ℤ, abcvals a b c = (¬(a = 0 ∧ b = 0 ∧ c = 0) ∧ |a| < 1000000 ∧ |b| < 1000000 ∧ |c| < 1000000))
: (∃ a b c : ℤ, abcvals a b c ∧ |a + b * Real.sqrt 2 + c * Real.sqrt 3| < 10 ^ (-(11 : ℝ))) ∧ (∀ a b c : ℤ, abcvals a b c → |a + b * Real.sqrt 2 + c * Real.sqrt 3| > 10 ^ (-(21 : ℝ))) :=
sorry

theorem putnam_1980_a5
(P : Polynomial ℝ)
(xeqs : ℝ → Prop)
(Pnonconst : P.degree > 0)
(hxeqs : ∀ x : ℝ, xeqs x = (0 = (∫ t in (0)..x, P.eval t * Real.sin t) ∧ 0 = (∫ t in (0)..x, P.eval t * Real.cos t)))
: {x : ℝ | xeqs x}.Finite :=
sorry

-- Note: uses (ℝ → ℝ) instead of (Set.Icc (0 : ℝ) 1 → ℝ)
noncomputable abbrev putnam_1980_a6_solution : ℝ := sorry
-- 1 / Real.exp 1
theorem putnam_1980_a6
(C : Set (ℝ → ℝ))
(uleint : ℝ → Prop)
(hC : C = {f : ℝ → ℝ | ContDiffOn ℝ 1 f (Set.Icc 0 1) ∧ f 0 = 0 ∧ f 1 = 1})
(huleint : ∀ u : ℝ, uleint u = ∀ f ∈ C, u ≤ (∫ x in Set.Ioo 0 1, |deriv f x - f x|))
: uleint putnam_1980_a6_solution ∧ (∀ u : ℝ, uleint u → u ≤ putnam_1980_a6_solution) :=
sorry

abbrev putnam_1980_b1_solution : Set ℝ := sorry
-- {c : ℝ | c ≥ 1 / 2}
theorem putnam_1980_b1
(c : ℝ)
: (∀ x : ℝ, (Real.exp x + Real.exp (-x)) / 2 ≤ Real.exp (c * x ^ 2)) ↔ c ∈ putnam_1980_b1_solution :=
sorry

abbrev putnam_1980_b3_solution : Set ℝ := sorry
-- {a : ℝ | a ≥ 3}
theorem putnam_1980_b3
(a : ℝ)
(u : ℕ → ℝ)
(hu : u 0 = a ∧ (∀ n : ℕ, u (n + 1) = 2 * u n - n ^ 2))
: (∀ n : ℕ, u n > 0) ↔ a ∈ putnam_1980_b3_solution :=
sorry

theorem putnam_1980_b4
{T : Type}
(X : Finset T)
(A : Fin 1066 → Finset T)
(hX : X.card ≥ 10)
(hA : ∀ i : Fin 1066, A i ⊆ X ∧ (A i).card > ((1 : ℚ)/2) * X.card)
: ∃ Y : Finset T, Y ⊆ X ∧ Y.card = 10 ∧ ∀ i : Fin 1066, ∃ y ∈ Y, y ∈ A i :=
sorry

open Set

abbrev putnam_1980_b5_solution : ℝ → Prop := sorry
-- fun t : ℝ => 1 ≥ t
theorem putnam_1980_b5
(T : Set ℝ := Icc 0 1)
(P : ℝ → (ℝ → ℝ) → Prop := fun t : ℝ => fun f : ℝ → ℝ => f 1 - 2*f (2/3) + f (1/3) ≥ t*(f (2/3) - 2*f (1/3) + f 0))
(Convex : (ℝ → ℝ) → Prop := fun f : ℝ → ℝ => ∀ u ∈ T, ∀ v ∈ T, ∀ s ∈ T, f (s*u + (1 - s)*v) ≤ s*(f u) + (1 - s)*(f v))
(S : ℝ → Set (ℝ → ℝ) := fun t : ℝ => {f : ℝ → ℝ | (∀ x ∈ T, f x ≥ 0) ∧ StrictMonoOn f T ∧ Convex f ∧ ContinuousOn f T ∧ P t f})
: ∀ t : ℝ, t ≥ 0 → ((∀ f ∈ S t, ∀ g ∈ S t, f * g ∈ S t) ↔ putnam_1980_b5_solution t) :=
sorry

theorem putnam_1980_b6
(G : ℕ × ℕ → ℚ)
(hG : ∀ d n : ℕ, d ≤ n → (d = 1 → G (d, n) = (1 : ℝ)/n) ∧ (d > 1 → G (d, n) = ((d : ℝ)/n)*∑ i in Finset.Icc d n, G (d - 1, i - 1)))
: ∀ d p : ℕ, 1 < d ∧ d ≤ p ∧ Prime p → ¬p ∣ (G (d, p)).den :=
sorry

end putnam_1980

section putnam_1979

abbrev putnam_1979_a1_solution : Multiset ℕ := sorry
-- Multiset.replicate 659 3 + {2}
theorem putnam_1979_a1
(P : Multiset ℕ → Prop := fun a => Multiset.card a > 0 ∧ (∀ i ∈ a, i > 0) ∧ a.sum = 1979)
: P putnam_1979_a1_solution ∧ ∀ a : Multiset ℕ, P a → putnam_1979_a1_solution.prod ≥ a.prod :=
sorry

abbrev putnam_1979_a2_solution : ℝ → Prop := sorry
-- fun k : ℝ => k ≥ 0
theorem putnam_1979_a2
: ∀ k : ℝ, (∃ f : ℝ → ℝ, Continuous f ∧ ∀ x : ℝ, f (f x) = k*x^9) ↔ putnam_1979_a2_solution k :=
sorry

abbrev putnam_1979_a3_solution : (ℝ × ℝ) → Prop := sorry
-- fun (a, b) => ∃ m : ℤ, a = m ∧ b = m
theorem putnam_1979_a3
(x : ℕ → ℝ)
(hx : ∀ n : ℕ, x n ≠ 0 ∧ (n ≥ 3 → x n = (x (n - 2))*(x (n - 1))/(2*(x (n - 2)) - (x (n - 1)))))
: (∀ m : ℕ, ∃ n : ℕ, n > m ∧ ∃ a : ℤ, a = x n) ↔ putnam_1979_a3_solution (x 1, x 2) :=
sorry

abbrev putnam_1979_a4_solution : Prop := sorry
-- True
theorem putnam_1979_a4
(A : Finset (Fin 2 → ℝ) × Finset (Fin 2 → ℝ) → Prop := fun (R, B) => R.card = B.card ∧ R ∩ B = ∅ ∧
∀ u : Finset (Fin 2 → ℝ), u ⊆ R ∪ B ∧ u.card = 3 → ¬Collinear ℝ (u : Set (Fin 2 → ℝ)))
(w : (Fin 2 → ℝ) × (Fin 2 → ℝ) → ℝ → (Fin 2 → ℝ) := fun (P, Q) => fun x : ℝ => fun i : Fin 2 => x * P i + (1 - x) * Q i)
: (∀ R : Finset (Fin 2 → ℝ), ∀ B : Finset (Fin 2 → ℝ), A (R, B) → ∃ v : Finset ((Fin 2 → ℝ) × (Fin 2 → ℝ)),
(∀ L ∈ v, ∀ M ∈ v, L ≠ M → ∀ x ∈ Icc 0 1, ∀ y ∈ Icc 0 1,
Euclidean.dist (w (L.1, L.2) x) (w (M.1, M.2) y) ≠ 0) ∧
v.card = R.card ∧ ∀ L ∈ v, L.1 ∈ R ∧ L.2 ∈ B) ↔ putnam_1979_a4_solution :=
sorry

theorem putnam_1979_a5
(S : ℝ → ℕ → ℤ := fun x : ℝ => fun n : ℕ => Int.floor (n*x))
(P : ℝ → Prop := fun x : ℝ => x^3 - 10*x^2 + 29*x - 25 = 0)
: ∃ α β : ℝ, α ≠ β ∧ P α ∧ P β ∧ ∀ n : ℕ, ∃ m : ℤ, m > n ∧ ∃ c d : ℕ, S α c = m ∧ S β d = m :=
sorry

theorem putnam_1979_a6
(n : ℕ)
(p : ℕ → ℝ)
(hp : ∀ i ∈ Finset.range n, p i ∈ Icc 0 1)
: ∃ x ∈ Icc 0 1, (∀ i ∈ Finset.range n, x ≠ p i) ∧ ∑ i in Finset.range n, 1/|x - p i| ≤ 8*n*∑ i in Finset.range n, (1 : ℝ)/(2*i + 1) :=
sorry


open Topology
open Filter

noncomputable abbrev putnam_1979_b2_solution : ℝ × ℝ → ℝ := sorry
-- fun (a, b) => (Real.exp (-1))*(b^b/a^a)^(1/(b-a))
theorem putnam_1979_b2
: ∀ a b : ℝ, 0 < a ∧ a < b → Tendsto (fun t : ℝ => (∫ x in Icc 0 1, (b*x + a*(1 - x))^t)^(1/t)) (𝓝[≠] 0) (𝓝 (putnam_1979_b2_solution (a, b))) :=
sorry

open Polynomial

abbrev putnam_1979_b3_solution : ℕ → ℕ := sorry
-- fun n ↦ (n - 1) / 2
theorem putnam_1979_b3
(F : Type*) [Field F] [Fintype F]
(n : ℕ := Fintype.card F)
(nodd : Odd n)
(b c : F)
(p : Polynomial F := X ^ 2 + (C b) * X + (C c))
(hp : Irreducible p)
: ({d : F | Irreducible (p + (C d))}.ncard = putnam_1979_b3_solution n) :=
sorry

theorem putnam_1979_b6
(n : ℕ)
(z : Fin n → ℂ)
: (|((∑ i : Fin n, (z i) ^ 2) ^ ((1 : ℂ) / 2)).re| ≤ ∑ i : Fin n, |(z i).re|) :=
sorry

end putnam_1979

section putnam_1978

theorem putnam_1978_a1
(S : Set ℕ := {k | ∃ j ≤ 33, k = 3 * j + 1})
(T : Set ℕ)
(hT : T ⊆ S ∧ T.ncard = 20)
: (∃ m ∈ T, ∃ n ∈ T, m ≠ n ∧ m + n = 104) :=
sorry

theorem putnam_1978_a2
(n : ℕ)
(npos : n > 0)
(a b : ℝ)
(hab : a ≠ b)
(c : Fin n → ℝ)
(A : Matrix (Fin n) (Fin n) ℝ := fun i j ↦ ite (i < j) a (ite (i > j) b (c i)))
(p : ℝ → ℝ := fun x ↦ ∏ i : Fin n, (c i - x))
: (A.det = ((b * p a - a * p b) / (b - a))) :=
sorry

open Set

abbrev putnam_1978_a3_solution : ℕ := sorry
-- 2
theorem putnam_1978_a3
(p : Polynomial ℝ := 2 * (X ^ 6 + 1) + 4 * (X ^ 5 + X) + 3 * (X ^ 4 + X ^ 2) + 5 * X ^ 3)
(I : ℕ → ℝ := fun k ↦ ∫ x in Ioi 0, x ^ k / p.eval x)
: (putnam_1978_a3_solution ∈ Ioo 0 5 ∧ ∀ k ∈ Ioo 0 5, I putnam_1978_a3_solution ≤ I k) :=
sorry

-- Note: This formalization uses "Type" instead of "Type*" for an algebraic structure (a set with a bypass operation). Also, the original problem asks for a witness to the existentially quantified statement in the goal.
theorem putnam_1978_a4
(bypass : (S : Type) → [inst : Mul S] → Prop := fun S [Mul S] ↦ ∀ a b c d : S, (a * b) * (c * d) = a * d)
: ((∀ (S : Type) (_ : Mul S), bypass S → ∀ a b c : S, a * b = c → (c * c = c ∧ ∀ d : S, a * d = c * d))
  ∧ (∃ (S : Type) (_ : Mul S) (_ : Fintype S), bypass S ∧ (∀ a : S, a * a = a) ∧ (∃ a b : S, a * b = a ∧ a ≠ b) ∧ (∃ a b : S, a * b ≠ a))) :=
sorry


open Real

theorem putnam_1978_a5
(n : ℕ)
(npos : n > 0)
(a : Fin n → ℝ)
(ha : ∀ i : Fin n, a i ∈ Ioo 0 Real.pi)
(μ : ℝ := ∑ i : Fin n, a i / n)
: (∏ i : Fin n, sin (a i) / (a i) ≤ (sin μ / μ) ^ n) :=
sorry

theorem putnam_1978_a6
(S : Finset (Fin 2 → ℝ))
(n : ℕ := S.card)
(npos : n > 0)
: ({pair : Set (Fin 2 → ℝ) | ∃ P ∈ S, ∃ Q ∈ S, pair = {P, Q} ∧ Euclidean.dist P Q = 1}.ncard < 2 * (n : ℝ) ^ ((3 : ℝ) / 2)) :=
sorry

abbrev putnam_1978_b2_solution : ℚ := sorry
-- 7 / 4
theorem putnam_1978_b2
: (∑' i : ℕ+, ∑' j : ℕ+, (1 : ℚ) / (i ^ 2 * j + 2 * i * j + i * j ^ 2) = putnam_1978_b2_solution) :=
sorry

open Filter Topology

theorem putnam_1978_b3
(P : ℕ+ → Polynomial ℝ)
(hP1 : P 1 = 1 + X)
(hP2 : P 2 = 1 + 2 * X)
(hPodd : ∀ n, P (2 * n + 1) = P (2 * n) + C ((n : ℝ) + 1) * X * P (2 * n - 1))
(hPeven : ∀ n, P (2 * n + 2) = P (2 * n + 1) + C ((n : ℝ) + 1) * X * P (2 * n))
(a : ℕ+ → ℝ)
(haroot : ∀ n, (P n).eval (a n) = 0)
(haub : ∀ n, ∀ x, (P n).eval x = 0 → x ≤ a n)
: (StrictMono a ∧ Tendsto a ⊤ (𝓝 0)) :=
sorry

theorem putnam_1978_b4
: (∀ N : ℝ, ∃ a b c d : ℤ, a > N ∧ b > N ∧ c > N ∧ d > N ∧ a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 = a * b * c + a * b * d + a * c * d + b * c * d) :=
sorry

open Polynomial Set

noncomputable abbrev putnam_1978_b5_solution : Polynomial ℝ := sorry
-- 4 * X ^ 4 - 4 * X ^ 2 + 1
theorem putnam_1978_b5
(S : Set (Polynomial ℝ) := {p : Polynomial ℝ | p.degree = 4 ∧ ∀ x ∈ Icc (-1) 1, p.eval x ∈ Icc 0 1})
: (putnam_1978_b5_solution ∈ S ∧ (∀ p ∈ S, p.coeff 4 ≤ putnam_1978_b5_solution.coeff 4)) :=
sorry

theorem putnam_1978_b6
(a : ℕ → ℕ → ℝ)
(ha : ∀ i j, a i j ∈ Icc 0 1)
(m n : ℕ)
(mnpos : m > 0 ∧ n > 0)
: ((∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j / i) ^ 2 ≤ 2 * m * ∑ i in Finset.Icc 1 n, ∑ j in Finset.Icc 1 (m * i), a i j) :=
sorry

end putnam_1978

section putnam_1977

noncomputable abbrev putnam_1977_a1_solution : ℝ := sorry
-- -7 / 8
theorem putnam_1977_a1
(y : ℝ → ℝ := fun x ↦ 2 * x ^ 4 + 7 * x ^ 3 + 3 * x - 5)
(S : Finset ℝ)
(hS : S.card = 4)
: (Collinear ℝ {P : Fin 2 → ℝ | P 0 ∈ S ∧ P 1 = y (P 0)} → (∑ x in S, x) / 4 = putnam_1977_a1_solution) :=
sorry

abbrev putnam_1977_a2_solution : ℝ → ℝ → ℝ → ℝ → Prop := sorry
-- fun a b c d ↦ d = a ∧ b = -c ∨ d = b ∧ a = -c ∨ d = c ∧ a = -b
theorem putnam_1977_a2
: (∀ a b c d : ℝ, a ≠ 0 → b ≠ 0 → c ≠ 0 → d ≠ 0 → ((a + b + c = d ∧ 1 / a + 1 / b + 1 / c = 1 / d) ↔ putnam_1977_a2_solution a b c d)) :=
sorry

abbrev putnam_1977_a3_solution : (ℝ → ℝ) → (ℝ → ℝ) → (ℝ → ℝ) := sorry
-- fun f g x ↦ g x - f (x - 3) + f (x - 1) + f (x + 1) - f (x + 3)
theorem putnam_1977_a3
(f g : ℝ → ℝ)
: let h := putnam_1977_a3_solution f g; (∀ x : ℝ, f x = (h (x + 1) + h (x - 1)) / 2 ∧ g x = (h (x + 4) + h (x - 4)) / 2) :=
sorry

open RingHom

noncomputable abbrev putnam_1977_a4_solution : RatFunc ℝ := sorry
-- RatFunc.X / (1 - RatFunc.X)
theorem putnam_1977_a4
: (∀ x ∈ Ioo 0 1, putnam_1977_a4_solution.eval (id ℝ) x = ∑' n : ℕ, x ^ 2 ^ n / (1 - x ^ 2 ^ (n + 1))) :=
sorry

open Nat

theorem putnam_1977_a5
(p m n : ℕ)
(hp : Nat.Prime p)
(hmgen : m ≥ n)
: (choose (p * m) (p * n) ≡ choose m n [MOD p]) :=
sorry

abbrev putnam_1977_a6_solution : Prop := sorry
-- True
theorem putnam_1977_a6
(X : Set (ℝ × ℝ) := Set.prod (Icc 0 1) (Icc 0 1))
(room : (ℝ × ℝ) → ℝ := fun (a,b) ↦ min (min a (1 - a)) (min b (1 - b)))
: ((∀ f : (ℝ × ℝ) → ℝ, Continuous f → (∀ P ∈ X, ∫ x in (P.1 - room P)..(P.1 + room P), ∫ y in (P.2 - room P)..(P.2 + room P), f (x, y) = 0) → (∀ P ∈ X, f P = 0)) ↔ putnam_1977_a6_solution) :=
sorry

open Filter Topology

noncomputable abbrev putnam_1977_b1_solution : ℝ := sorry
-- 2 / 3
theorem putnam_1977_b1
: (Tendsto (fun N ↦ ∏ n in Finset.Icc (2 : ℕ) N, ((n : ℝ) ^ 3 - 1) / (n ^ 3 + 1)) ⊤ (𝓝 putnam_1977_b1_solution)) :=
sorry

abbrev putnam_1977_b3_solution : Prop := sorry
-- False
theorem putnam_1977_b3
(P : ℝ × ℝ × ℝ → Prop := fun (a, b, c) => Irrational a ∧ Irrational b ∧ Irrational c ∧ a > 0 ∧ b > 0 ∧ c > 0 ∧ a + b + c = 1)
(balanced : ℝ × ℝ × ℝ → Prop := fun (a, b, c) => a < 1/2 ∧ b < 1/2 ∧ c < 1/2)
(B : ℝ × ℝ × ℝ → ℝ × ℝ × ℝ := fun (a, b, c) => (ite (a > 1/2) (2*a - 1) (2*a), ite (b > 1/2) (2*b - 1) (2*b), ite (c > 1/2) (2*c - 1) (2*c)))
: (∀ t : ℝ × ℝ × ℝ, P t → ∃ n : ℕ, balanced (B^[n] t)) ↔ putnam_1977_b3_solution :=
sorry

theorem putnam_1977_b5
(n : ℕ)
(hn : n > 1)
(a : Fin n → ℝ)
(A : ℝ)
(hA : A + ∑ i : Fin n, (a i)^2 < (1/((n : ℝ) - 1))*(∑ i : Fin n, a i)^2)
: ∀ i j : Fin n, i < j → A < 2*(a i)*(a j) :=
sorry

open Set

theorem putnam_1977_b6
[Group G]
(H : Subgroup G)
(h : ℕ := Nat.card H)
(a : G)
(ha : ∀ x : H, (x*a)^3 = 1)
(P : Set G := {g : G | ∃ xs : List H, (xs.length ≥ 1) ∧ g = (List.map (fun h : H => h*a) xs).prod})
: (Finite P) ∧ (P.ncard ≤ 3*h^2) :=
sorry

end putnam_1977

section putnam_1976

section putnam_1976_a2 -- TODO: This needs to be account for in the script
open MvPolynomial

theorem putnam_1976_a2
(P : MvPolynomial (Fin 2) ℤ := (X 0)^2*(X 1) + (X 0)*(X 1)^2)
(Q : MvPolynomial (Fin 2) ℤ := (X 0)^2 + (X 0)*(X 1) + (X 2)^2)
(F : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n - (X 0)^n - (X 1)^n)
(G : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n + (X 0)^n + (X 1)^n)
(i : Fin 2 → MvPolynomial (Fin 2) ℤ := fun j : Fin 2 => ite (j = 0) P Q)
: ∀ n : ℕ, n > 0 → ∃ A : MvPolynomial (Fin 2) ℤ, F n = aeval i A ∨ G n = aeval i A :=
sorry

end putnam_1976_a2

abbrev putnam_1976_a3_solution : Set (ℕ × ℕ × ℕ × ℕ) := sorry
-- {(3, 2, 2, 3), (2, 3, 3, 2)}
theorem putnam_1976_a3
: {(p, r, q, s) : ℕ × ℕ × ℕ × ℕ | Nat.Prime p ∧ Nat.Prime q ∧ r > 1 ∧ s > 1 ∧ |(p^r : ℤ) - q^s| = 1} = putnam_1976_a3_solution :=
sorry

open Polynomial

noncomputable abbrev putnam_1976_a4_solution : (ℝ → ℝ) × (ℝ → ℝ) := sorry
-- (fun r : ℝ => -1/(r + 1), fun r : ℝ => -(r + 1)/r)
theorem putnam_1976_a4
(a b c d : ℤ)
(r : ℝ)
(P : Polynomial ℚ := X^3 + (C (a : ℚ))*X^2 + (C (b : ℚ))*X - (C 1))
(Q : Polynomial ℚ := X^3 + (C (c : ℚ))*X^2 + (C (d : ℚ))*X + (C 1))
(hP : aeval r P = 0 ∧ Irreducible P)
(hQ : aeval (r + 1) Q = 0)
: ∃ s : ℝ, aeval s P = 0 ∧ (s = putnam_1976_a4_solution.1 r ∨ s = putnam_1976_a4_solution.2 r) :=
sorry

theorem putnam_1976_a6
(f : ℝ → ℝ)
(hfdiff : ContDiff ℝ 2 f)
(hfbd : ∀ x : ℝ, |f x| ≤ 1)
(hf0 : (f 0)^2 + (deriv f 0)^2 = 4)
: ∃ y : ℝ, (f y) + (iteratedDeriv 2 f y) = 0 :=
sorry

open Filter Topology

abbrev putnam_1976_b1_solution : ℕ × ℕ := sorry
-- (4, 1)
theorem putnam_1976_b1
: Tendsto (fun n : ℕ => ((1 : ℝ)/n)*∑ k in Finset.Icc 1 n, (Nat.floor ((2*n)/k) - 2*Nat.floor (n/k))) ⊤
(𝓝 (Real.log putnam_1976_b1_solution.1 - putnam_1976_b1_solution.2)) :=
sorry

abbrev putnam_1976_b2_solution : ℕ × Set (List (ℤ × ℤ)) := sorry
-- (8, {[(0, 0)], [(2, 0)], [(0, 1)], [(0, 2)], [(0, 3)], [(0, 4)], [(0, 5)], [(0, 6)]})
theorem putnam_1976_b2
(G : Type*) [Group G]
(A B : G)
(word : List (ℤ × ℤ) → G := fun w : List (ℤ × ℤ) => (List.map (fun t : ℤ × ℤ => A^(t.1)*B^(t.2)) w).prod)
(hG : ∀ g : G, ∃ w : List (ℤ × ℤ), g = word w)
(hA : A^4 = 1 ∧ A^2 ≠ 1)
(hB : B^7 = 1 ∧ B ≠ 1)
(h1 : A*B*A^(-(1 : ℤ))*B = 1)
(S : Set G := {g : G | ∃ C : G, C^2 = g})
: S.ncard = putnam_1976_b2_solution.1 ∧ S = {word w | w ∈ putnam_1976_b2_solution.2} :=
sorry

noncomputable abbrev putnam_1976_b5_solution : ℕ → Polynomial ℤ := sorry
-- fun n => C (Nat.factorial n)
theorem putnam_1976_b5
: ∀ n : ℕ, ∑ k in Finset.range (n + 1), C ((-(1 : ℤ))^k * Nat.choose n k) * (X - (C (k : ℤ)))^n = putnam_1976_b5_solution n :=
sorry

theorem putnam_1976_b6
(σ : ℕ → ℕ := fun N : ℕ => ∑ d in Nat.divisors N, d)
(quasiperfect : ℕ → Prop := fun N : ℕ => σ N = 2*N + 1)
: ∀ N : ℕ, quasiperfect N → ∃ m : ℤ, Odd m ∧ m^2 = N :=
sorry

end putnam_1976

section putnam_1975
open Polynomial

abbrev putnam_1975_a1_solution : ((ℤ × ℤ) → ℤ) × ((ℤ × ℤ) → ℤ) := sorry
-- (fun (a, b) => a + b + 1, fun (a, b) => a - b)
theorem putnam_1975_a1
(nab : (ℤ × ℤ × ℤ) → Prop := fun (n, a, b) => n = (a^2 + (a : ℚ))/2 + (b^2 + (b : ℚ))/2)
(nxy : (ℤ × ℤ × ℤ) → Prop := fun (n, x, y) => 4*n + 1 = x^2 + y^2)
: (∀ n a b : ℤ, nab (n, a, b) → nxy (n, putnam_1975_a1_solution.1 (a, b), putnam_1975_a1_solution.2 (a, b))) ∧
∀ n : ℤ, (∃ x y : ℤ, nxy (n, x, y)) → ∃ a b : ℤ, nab (n, a, b) :=
sorry

abbrev putnam_1975_a2_solution : (ℝ × ℝ) → Prop := sorry
-- fun (b, c) => c < 1 ∧ c - b > -1 ∧ c + b > -1
theorem putnam_1975_a2
: ∀ b c : ℝ, (∀ z : ℂ, (X^2 + (C (b : ℂ))*X + (C (c : ℂ))).eval z = 0 → ‖z‖ < 1) ↔ putnam_1975_a2_solution (b, c) :=
sorry

noncomputable abbrev putnam_1975_a3_solution : ((ℝ × ℝ × ℝ) → (ℝ × ℝ × ℝ)) × ((ℝ × ℝ × ℝ) → (ℝ × ℝ × ℝ)) := sorry
-- (fun (a, b, c) => ((a/b)^(1/(b - a)), (1 - ((a/b)^(1/(b - a)))^b)^(1/b), 0), fun (a, b, c) => (0, (1 - ((b/c)^(1/(c - b)))^b)^(1/b), (b/c)^(1/(c - b))))
theorem putnam_1975_a3
(a b c : ℝ)
(hi : 0 < a ∧ a < b ∧ b < c)
(P : (ℝ × ℝ × ℝ) → Prop := fun (x, y, z) => x ≥ 0 ∧ y ≥ 0 ∧ z ≥ 0 ∧ x^b + y^b + z^b = 1)
(f : (ℝ × ℝ × ℝ) → ℝ := fun (x, y, z) => x^a + y^b + z^c)
: (P (putnam_1975_a3_solution.1 (a, b, c)) ∧ ∀ x y z : ℝ, P (x, y, z) →
f (x, y, z) ≤ f (putnam_1975_a3_solution.1 (a, b, c))) ∧
(P (putnam_1975_a3_solution.2 (a, b, c)) ∧ ∀ x y z : ℝ, P (x, y, z) →
f (x, y, z) ≥ f (putnam_1975_a3_solution.2 (a, b, c))) :=
sorry

abbrev putnam_1975_b1_solution : ℤ := sorry
-- 7
theorem putnam_1975_b1
(H : Set (ℤ × ℤ) := {(x, y) : (ℤ × ℤ) | ∃ u v w : ℤ, (x, y) = (u*3 + v*4 + w*5, u*8 + v*(-1) + w*4)})
: (∃ b : ℤ, H = {(x, y) : (ℤ × ℤ) | ∃ u v : ℤ, (x, y) = (u, u*b + v*putnam_1975_b1_solution)}) ∧ putnam_1975_b1_solution > 0 :=
sorry

open Multiset

noncomputable abbrev putnam_1975_b3_solution : ℕ → ℝ := sorry
-- fun k : ℕ => 1/(Nat.factorial k)
theorem putnam_1975_b3
: ∀ k : ℕ, k > 0 → (∀ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k →
(esymm a k)/(esymm a 1)^k ≤ putnam_1975_b3_solution k) ∧
∀ M : ℝ, M < putnam_1975_b3_solution k → (∃ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k ∧
(esymm a k)/(esymm a 1)^k > M) :=
sorry

abbrev putnam_1975_b4_solution : Prop := sorry
-- False
theorem putnam_1975_b4
(P : ℝ × ℝ → Prop := fun (x, y) => x^2 + y^2 = 1)
: (∃ B ⊆ setOf P, IsClosed B ∧ ∀ x y : ℝ, P (x, y) → Xor' ((x, y) ∈ B) ((-x, -y) ∈ B)) ↔ putnam_1975_b4_solution :=
sorry

theorem putnam_1975_b5
(e : ℝ := Real.exp 1)
(f : ℕ → ℝ → ℝ)
(h0 : ∀ x : ℝ, f 0 x = e^x)
(hf : ∀ n : ℕ, ∀ x : ℝ, f (n + 1) x = x * (deriv (f n) x))
: ∑' n : ℕ, (f n 1)/(Nat.factorial n) = e^e :=
sorry

end putnam_1975

section putnam_1974
open Set

abbrev putnam_1974_a1_solution : ℕ := sorry
-- 11
theorem putnam_1974_a1
(conspiratorial : Set ℕ → Prop := fun S => ∀ a ∈ S, ∀ b ∈ S, ∀ c ∈ S, (a ≠ 0) ∧ ((a ≠ b ∧ b ≠ c ∧ a ≠ c) → (Nat.gcd a b > 1 ∨ Nat.gcd b c > 1 ∨ Nat.gcd a c > 1)))
: (∀ S : Set ℕ, S ⊆ Icc 1 16 → conspiratorial S → S.encard ≤ putnam_1974_a1_solution) ∧ (∃ S : Set ℕ, S ⊆ Icc 1 16 ∧ conspiratorial S ∧ S.encard = putnam_1974_a1_solution) := sorry

abbrev putnam_1974_a3_solution : (Set ℕ) × (Set ℕ) := sorry
-- ({p : ℕ | p.Prime ∧ p ≡ 1 [MOD 8]}, {p : ℕ | p.Prime ∧ p ≡ 5 [MOD 8]})
theorem putnam_1974_a3
(assmption : ∀ p : ℕ, p.Prime ∧ p > 2 → ((∃ m n : ℕ, p = m^2 + n^2) ↔ p ≡ 1 [MOD 4]))
: ∀ p : ℕ, ((p.Prime ∧ p > 2 ∧ (∃ x y : ℤ, p = x^2 + 16*y^2)) ↔ p ∈ putnam_1974_a3_solution.1) ∧ ((p.Prime ∧ p > 2 ∧ (∃ x y : ℤ, p = 4*x^2 + 4*x*y + 5*y^2)) ↔ p ∈ putnam_1974_a3_solution.2) :=
sorry

open Nat
noncomputable abbrev putnam_1974_a4_solution : ℕ → ℝ := sorry
-- (fun n => (n / 2^(n-1)) * (n-1).choose (floor ((n-1)/2)))
theorem putnam_1974_a4
(n : ℕ)
(hn : n > 0)
: 1/(2^(n-1)) * ∑ k in Finset.Icc 0 ((ceil (n/2)) - 1), (n - 2*k)*(n.choose k) = putnam_1974_a4_solution n :=
sorry

open Polynomial
abbrev putnam_1974_a6_solution : ℕ := sorry
-- 25
theorem putnam_1974_a6
(n : ℕ := 10^6)
(hdivnallx : Polynomial ℤ → Prop := fun f => Monic f ∧ (∀ x : ℤ, (n : ℤ) ∣ f.eval x))
: sInf {d : ℕ | ∃ f : Polynomial ℤ, hdivnallx f ∧ d = f.natDegree} = putnam_1974_a6_solution :=
sorry

theorem putnam_1974_b3
(α : ℝ)
(ha : Real.cos (Real.pi * α) = (1 : ℝ)/3)
: Irrational α :=
sorry

open Topology Filter
theorem putnam_1974_b4
(f : ℝ × ℝ → ℝ)
(hfcontx : ∀ y : ℝ, Continuous (fun x => f ⟨x, y⟩))
(hfconty : ∀ x : ℝ, Continuous (fun y => f ⟨x, y⟩))
: ∃ g : ℕ → (ℝ × ℝ → ℝ), (∀ n : ℕ, Continuous (g n)) ∧ (∀ x y : ℝ, Tendsto (fun n => g n ⟨x, y⟩) atTop (𝓝 (f ⟨x, y⟩))) :=
sorry

theorem putnam_1974_b5
: ∀ n ≥ 0, ∑ i in Finset.Icc (0 : ℕ) n, (n^i : ℝ)/(Nat.factorial i) > (Real.exp n)/2 :=
sorry

abbrev putnam_1974_b6_solution : (ℕ × ℕ × ℕ) := sorry
-- ((2^1000 - 1)/3, (2^1000 - 1)/3, 1 + (2^1000 - 1)/3)
theorem putnam_1974_b6
(n : ℕ := 1000)
(count0 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 0 [MOD 3]}.ncard)
(count1 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 1 [MOD 3]}.ncard)
(count2 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 2 [MOD 3]}.ncard)
: (count0, count1, count2) = putnam_1974_b6_solution :=
sorry

end putnam_1974

section putnam_1973

theorem putnam_1973_a3
(b : ℕ → ℝ := fun n => sInf {(k : ℕ) + n/k | k > 0})
: ∀ n : ℕ, n > 0 → floor (b n) = floor (Real.sqrt (4 * n + 1)) :=
sorry

abbrev putnam_1973_a4_solution : ℕ := sorry
-- 3
theorem putnam_1973_a4
(f : ℝ → ℝ := fun x => 2^x - 1 - x^2)
: putnam_1973_a4_solution = {x : ℝ | f x = 0}.ncard :=
sorry

-- Note: Uses the slope/intercept formulation of line in the plane
theorem putnam_1973_a6
(h_nint : ℕ → (Fin 7 → (ℝ × ℝ)) → ℕ := fun n lines => {p : ℝ × ℝ | ∃! S : Set (Fin 7), S.ncard = n ∧ p ∈ ⋂ i ∈ S, {pts | pts.2 = (lines i).1 * pts.1 + (lines i).2}}.ncard)
: ¬ ∃ lines : Fin 7 → (ℝ × ℝ), (∀ i j : Fin 7, i ≠ j → lines i ≠ lines j) ∧ h_nint 3 lines ≥ 6 ∧ h_nint 2 lines ≥ 4 :=
sorry

theorem putnam_1973_b1
(n : ℕ)
(a : Finset.Icc 1 (2 * n + 1) → ℤ)
(h_remove : ∀ S : Finset (Finset.Icc 1 (2 * n + 1)), S.card = 2*n → ∃ T, T ⊆ S ∧ T.card = n ∧ ∑ i in T, a i = ∑ i in (S \ T), a i)
: ∀ i j : Finset.Icc 1 (2 * n + 1), a i = a j :=
sorry

theorem putnam_1973_b2
(z : ℂ)
(hzrat : ∃ q1 q2 : ℚ, z.re = q1 ∧ z.im = q2)
(hznorm : ‖z‖ = 1 )
: ∀ n : ℤ, ∃ q : ℚ, ‖z^(2*n) - 1‖ = q :=
sorry

theorem putnam_1973_b3
(p : ℕ)
(pgt1 : p > 1)
(hprime : ∀ x ∈ Set.Ico 0 p, Nat.Prime (x^2 - x + p))
: ∃! triple : ℤ × ℤ × ℤ, let (a,b,c) := triple; b^2 - 4*a*c = 1 - 4*p ∧ 0 < a ∧ a ≤ c ∧ -a ≤ b ∧ b < a :=
sorry

-- Note: Boosted domain to ℝ, which is fine because you can extend any such function f from [0,1] to ℝ satisfying the same properties. There may be multiple correct answers.
abbrev putnam_1973_b4_solution : ℝ → ℝ := sorry
-- (fun x => x)
theorem putnam_1973_b4
(f : ℝ → ℝ)
(hprop : (ℝ → ℝ) → Prop := fun g => ContDiff ℝ 1 g ∧ (∀ x : ℝ, 0 < deriv g x ∧ deriv g x ≤ 1) ∧ g 0 = 0)
(hf : hprop f)
: (∫ x in Icc 0 1, f x)^2 ≥ ∫ x in Icc 0 1, (f x)^3 ∧ (hprop putnam_1973_b4_solution ∧ (∫ x in Icc 0 1, putnam_1973_b4_solution x)^2 = ∫ x in Icc 0 1, (putnam_1973_b4_solution x)^3) :=
sorry

end putnam_1973

section putnam_1972

theorem putnam_1972_a1
(n : ℕ)
(hn : n > 0)
(fourAP : ℕ → ℕ → ℕ → ℕ → Prop := fun n1 n2 n3 n4 => ∃ o1 o2 o3 o4 : ℕ, {n1, n2, n3, n4} = ({o1, o2, o3, o4} : Set ℕ) ∧ o1 ≤ o2 ∧ o2 ≤ o3 ∧ o3 ≤ o4 ∧ o4-o3 = o3-o2 ∧ o3-o2 = o2-o1)
: ¬ ∃ r : ℕ, r > 0 ∧ r + 3 ≤ n ∧ fourAP (n.choose r) (n.choose (r+1)) (n.choose (r+2)) (n.choose (r+3)) :=
sorry

theorem putnam_1972_a2
: (∀ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) → (∀ x y : S, x * y = y * x)) ∧ ∃ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) ∧ ¬(∀ x y z : S, x * (y * z) = (x * y) * z) :=
sorry

-- Note: uses (ℝ → ℝ) instead of (Set.Icc 0 1 → ℝ)
abbrev putnam_1972_a3_solution : Set (ℝ → ℝ) := sorry
-- {f | ∃ A B : ℝ, ∀ x ∈ Set.Icc 0 1, f x = A * x + B}
theorem putnam_1972_a3
(x : ℕ → ℝ)
(climit_exists : (ℕ → ℝ) → Prop := fun x => ∃ C : ℝ, Tendsto (fun n => (∑ i in Finset.range n, (x i))/(n : ℝ)) atTop (𝓝 C))
(supercontinuous : (ℝ → ℝ) → Prop := fun f => ∀ (x : ℕ → ℝ), (∀ i : ℕ, x i ∈ Icc 0 1) → climit_exists x → climit_exists (fun i => f (x i)))
: {f | supercontinuous f} = putnam_1972_a3_solution :=
sorry

theorem putnam_1972_a5
(n : ℕ)
(hn : n > 1)
: ¬(n ∣ 2^n - 1) :=
sorry


open MeasureTheory
theorem putnam_1972_a6
(f : ℝ → ℝ)
(n : ℕ)
(hfintegrable: IntegrableOn f (Icc 0 1))
(hfint : ∀ i ∈ Icc 0 (n-1), ∫ x in Icc 0 1, x^i*(f x) = 0)
(hfintlast : ∫ x in Icc 0 1, x^n*(f x) = 1)
: ∃ S, S ⊆ Icc (0 : ℝ) 1 ∧ MeasurableSet S ∧ volume S > 0 ∧ ∀ x ∈ S, |f x| ≥ 2^n * (n + 1) :=
sorry

open Metric

theorem putnam_1972_b1
(S : ℝ → ℝ := fun x : ℝ => ∑' n : ℕ, x^n * (x - 1)^(2*n) / (Nat.factorial n))
(p : ℕ → ℝ)
(hp : ∃ a : ℝ, a > 0 ∧ ∀ x ∈ ball 0 a, ∑' n : ℕ, (p n)*x^n = S x)
: ¬∃ n : ℕ, p n = 0 ∧ p (n + 1) = 0 ∧ p (n + 2) = 0 :=
sorry

theorem putnam_1972_b3
(G : Type*) [Group G]
(A B : G)
(hab : A * B * A = B * A^2 * B ∧ A^3 = 1 ∧ (∃ n : ℕ, n > 0 ∧ B^(2*n -1) = 1))
: B = 1 :=
sorry

theorem putnam_1972_b4
(n : ℕ)
(hn : n > 1)
(vars : ℝ → ℝ → ℝ → (Fin 3 → ℝ) := fun a b c ↦ fun i ↦ ite (i = 0) a (ite (i = 1) b c))
: ∃ P : MvPolynomial (Fin 3) ℝ, ∀ x : ℝ, x = MvPolynomial.eval (vars (x^n) (x^(n+1)) (x + x^(n+2))) P :=
sorry

open Metric
theorem putnam_1972_b6
(k : ℕ)
(hk : k ≥ 1)
(n : Fin k → ℕ)
(hn : ∀ i : Fin k, n i > 0)
(hn' : ∀ i j : Fin k, i < j → n i < n j)
(zpoly : ℂ → ℂ := fun z => 1 + ∑ i : Fin k, z^(n i))
: ∀ z : ℂ, z ∈ ball 0 ((Real.sqrt 5 - 1)/2) → zpoly z ≠ 0 :=
sorry

end putnam_1972

section putnam_1971

open Set

theorem putnam_1971_a1
(S : Set (ℤ × ℤ × ℤ))
(hS : S.ncard = 9)
(L : (ℤ × ℤ × ℤ) × (ℤ × ℤ × ℤ) → Set (ℝ × ℝ × ℝ) := fun ((a, b, c), (d, e, f)) =>
{(t*a + (1-t)*d, t*b + (1-t)*e, t*c + (1-t)*f) | t ∈ Ioo (0 : ℝ) 1})
: ∃ x y z : ℤ, ∃ P ∈ S, ∃ Q ∈ S, P ≠ Q ∧ ((x : ℝ), (y : ℝ), (z : ℝ)) ∈ L (P, Q) :=
sorry

abbrev putnam_1971_a2_solution : Set (Polynomial ℝ) := sorry
-- {Polynomial.X}
theorem putnam_1971_a2
: ∀ P : Polynomial ℝ, (P.eval 0 = 0 ∧ ∀ x : ℝ, P.eval (x^2 + 1) = (P.eval x)^2 + 1) ↔ P ∈ putnam_1971_a2_solution :=
sorry

theorem putnam_1971_a3
(a b c : ℝ × ℝ)
(R : ℝ)
(habclattice : a.1 = round a.1 ∧ a.2 = round a.2 ∧ b.1 = round b.1 ∧ b.2 = round b.2 ∧ c.1 = round c.1 ∧ c.2 = round c.2)
(habcneq : a ≠ b ∧ a ≠ c ∧ b ≠ c)
(oncircle : (ℝ × ℝ) → ℝ → (ℝ × ℝ) → Prop := fun C r p => Euclidean.dist p C = r)
(hcircle : ∃ C : ℝ × ℝ, oncircle C R a ∧ oncircle C R b ∧ oncircle C R c)
: (Euclidean.dist a b) * (Euclidean.dist a c) * (Euclidean.dist b c) ≥ 2 * R :=
sorry

open MvPolynomial
theorem putnam_1971_a4
(ε : ℝ)
(hε : 0 < ε ∧ ε < 1)
(P : ℕ → ℝ → MvPolynomial (Fin 2) ℝ := fun n δ => (MvPolynomial.X 0 + MvPolynomial.X 1)^n * ((MvPolynomial.X 0)^2 - (MvPolynomial.C (2 - δ))*(MvPolynomial.X 0)*(MvPolynomial.X 1) + (MvPolynomial.X 1)^2))
: ∃ N : ℕ, ∀ n ≥ N, ∀ i : Fin 2 →₀ ℕ, MvPolynomial.coeff i (P n ε) > 0 :=
sorry

theorem putnam_1971_a6
(c : ℝ)
(hc : ∀ n : ℕ, n > 0 → ∃ m : ℤ, (n : ℝ)^c = m)
: ∃ m : ℕ, c = m :=
sorry

theorem putnam_1971_b1
(S : Type*) [Mul S]
(hself : ∀ x : S, x * x = x)
(h2 : ∀ x y z : S, (x * y) * z = (y * z) * x)
: ∀ x y z : S, (x * y) * z = x * (y * z) ∧ x * y = y * x :=
sorry

abbrev putnam_1971_b2_solution : Set (ℝ → ℝ) := sorry
-- {fun x : ℝ => (x^3 - x^2 - 1)/(2 * x * (x - 1))}
theorem putnam_1971_b2
(S : Set ℝ := univ \ {0, 1})
(P : (ℝ → ℝ) → Prop := fun (F : ℝ → ℝ) => ∀ x ∈ S, F x + F ((x - 1)/x) = 1 + x)
: (∀ F ∈ putnam_1971_b2_solution, P F) ∧ ∀ f : ℝ → ℝ, P f → ∃ F ∈ putnam_1971_b2_solution, ∀ x ∈ S, f x = F x :=
sorry

theorem putnam_1971_b6
(δ : ℕ → ℕ := fun n => sSup {t | Odd t ∧ t ∣ n})
: ∀ x : ℕ, x > 0 → |∑ i in Finset.Icc 1 x, (δ i)/(i : ℚ) - 2*x/3| < 1 :=
sorry

end putnam_1971

section putnam_1970


theorem putnam_1970_a1
(a b : ℝ)
(ha : a > 0)
(hb : b > 0)
(f : ℝ → ℝ := fun x : ℝ => Real.exp (a*x) * Real.cos (b*x))
(p : ℕ → ℝ)
(hp : ∃ a : ℝ, a > 0 ∧ ∀ x ∈ ball 0 a, ∑' n : ℕ, (p n)*x^n = f x)
(S : Set ℕ := {n : ℕ | p n = 0})
: S = ∅ ∨ ¬Finite S :=
sorry

abbrev putnam_1970_a3_solution : ℕ × ℕ := sorry
-- (3, 1444)
theorem putnam_1970_a3
(L : ℕ → ℕ)
(hL : ∀ n : ℕ, n > 0 → L n ≤ (Nat.digits 10 n).length ∧
(∀ k : ℕ, k < L n → (Nat.digits 10 n)[k]! = (Nat.digits 10 n)[0]!) ∧
(L n ≠ (Nat.digits 10 n).length → (Nat.digits 10 n)[L n]! ≠ (Nat.digits 10 n)[0]!))
: (∃ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1) ∧
(∀ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 → L (n^2) ≤ putnam_1970_a3_solution.1) ∧
(∃ m : ℕ, m^2 = putnam_1970_a3_solution.2) ∧
L (putnam_1970_a3_solution.2) = putnam_1970_a3_solution.1 ∧
(Nat.digits 10 putnam_1970_a3_solution.2)[0]! ≠ 0 ∧
∀ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1 → n^2 ≥ putnam_1970_a3_solution.2 :=
sorry

open Filter Topology
theorem putnam_1970_a4
(x : ℕ → ℝ)
(hxlim : Tendsto (fun n => x n - x (n-2)) atTop (𝓝 0))
: Tendsto (fun n => (x n - x (n-1))/n) atTop (𝓝 0) :=
sorry

noncomputable abbrev putnam_1970_b1_solution : ℝ := sorry
-- Real.exp (2 * Real.log 5 - 4 + 2 * Real.arctan 2)
theorem putnam_1970_b1
: Tendsto (fun n => 1/(n^4) * ∏ i in Finset.range (2*n), ((n^2 + (i + 1)^2) : ℝ)^((1 : ℝ)/n)) atTop (𝓝 putnam_1970_b1_solution) :=
sorry

theorem putnam_1970_b3
(S : Set (ℝ × ℝ))
(a b : ℝ)
(hab : a < b)
(hS : ∀ s ∈ S, s.1 ∈ Ioo a b)
(hSclosed : IsClosed S)
: IsClosed {y | ∃ x : ℝ, ⟨x,y⟩ ∈ S} :=
sorry

theorem putnam_1970_b5
(ramp : ℤ → (ℝ → ℝ) := fun n => (fun x => if x ≤ -n then -n else (if -n < x ∧ x ≤ n then x else n)))
(F : ℝ → ℝ)
: Continuous F ↔ (∀ n : ℕ, Continuous ((ramp n) ∘ F)) :=
sorry


end putnam_1970

section putnam_1969
open Matrix

theorem putnam_1969_a2
(D : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ := fun n => λ i j => |i.1 - j.1| )
: ∀ n, n > 0 → (D n).det = (-1)^(n-1) * (n-1) * 2^(n-2) :=
sorry

theorem putnam_1969_a4
: Tendsto (fun n => ∑ i in Finset.Icc (1 : ℤ) n, (-1)^(i+1)*(i : ℝ)^(-i)) atTop (𝓝 (∫ x in Ioo (0 : ℝ) 1, x^x)) :=
sorry

theorem putnam_1969_a6
(x : ℕ → ℝ)
(y : ℕ → ℝ)
(hy1 : ∀ n ≥ 2, y n = x (n-1) + 2 * (x n))
(hy2 : ∃ c : ℝ, Tendsto y atTop (𝓝 c))
: ∃ C : ℝ, Tendsto x atTop (𝓝 C) :=
sorry


theorem putnam_1969_b1
(n : ℕ)
(hnpos : n > 0)
(hn : 24 ∣ (n + 1))
: 24 ∣ ∑ d in divisors n, d :=
sorry

abbrev putnam_1969_b2_solution : Prop := sorry
-- False
theorem putnam_1969_b2
(G : Type*)
[Group G] [Finite G]
(h : ℕ → Prop := fun n => ∃ H : Fin n → Subgroup G, (∀ i : Fin n, (H i) < ⊤) ∧ ((⊤ : Set G) = ⋃ i : Fin n, (H i)))
: ¬(h 2) ∧ ((¬(h 3)) ↔ putnam_1969_b2_solution) :=
sorry

theorem putnam_1969_b3
(T : ℕ → ℝ)
(hT1 : ∀ n : ℕ, n ≥ 1 → (T n) * (T (n + 1)) = n)
(hT2 : Tendsto (fun n => (T n)/(T (n + 1))) atTop (𝓝 1))
: Real.pi * (T 1)^2 = 2 :=
sorry

theorem putnam_1969_b5
(a : ℕ → ℝ)
(ha : StrictMono a ∧ a > 0)
(hinvasum : ∃ C : ℝ, Tendsto (fun n => ∑ i : Fin n, 1/(a i)) atTop (𝓝 C))
(k : ℝ → ℕ := fun x => {n | a n ≤ x}.ncard)
: Tendsto (fun t => (k t)/t) atTop (𝓝 0) :=
sorry

theorem putnam_1969_b6
(A : Matrix (Fin 3) (Fin 2) ℝ)
(B : Matrix (Fin 2) (Fin 3) ℝ)
(p : Fin 3 → Fin 3 → ℝ)
(hp : p 0 0 = 8 ∧ p 0 1 = 2 ∧ p 0 2 = -2 ∧
p 1 0 = 2 ∧ p 1 1 = 5 ∧ p 1 2 = 4 ∧
p 2 0 = -2 ∧ p 2 1 = 4 ∧ p 2 2 = 5)
(hAB : A * B = Matrix.of p)
: B * A = 9 * (1 : Matrix (Fin 2) (Fin 2) ℝ) :=
sorry

end putnam_1969
