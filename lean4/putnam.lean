import Mathlib
open BigOperators

section putnam_2023
open Nat

abbrev putnam_2023_a1_solution : ℕ := sorry
-- 18
theorem putnam_2023_a1
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℝ → ℝ)
(hf : ∀ n : ℕ, ∀ x : ℝ, f n x = ∏ i : Fin n, Real.cos ((i+1) * x))
: (|iteratedDeriv 2 (f n) 0| > 2023 ∧ ∀ N < n, (|iteratedDeriv 2 (f N) 0| ≤ 2023)) ↔ n = putnam_2023_a1_solution :=
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
theorem putnam_2023_b2 : sInf {k | ∃ n : ℕ, k = List.sum (digits 2 (2023*n))} = putnam_2023_b2_solution :=
sorry

def num_ones : List ℕ → ℕ
| [] => (0 : ℕ)
| (h :: t) => if h = 1 then num_ones t + 1 else num_ones t

abbrev putnam_2023_a5_solution : Set ℂ := sorry
-- {-(3^1010 - 1)/2, -(3^1010 - 1)/2 + sqrt (9^1010 - 1) * Complex.I/4, -(3^1010 - 1)/2 - sqrt (9^1010 - 1) * Complex.I/4}
theorem putnam_2023_a5 (f : ℂ → ℂ := ∑ k in Finset.range (3^1010), (-2)^( num_ones (digits 3 k)) * (z + k)^2023)
 : ∀ z : ℂ, z ∈ putnam_2023_a5_solution ↔ f z = 0 :=
 sorry

end putnam_2023

section putnam_2022

open Polynomial

abbrev putnam_2022_a1_solution : Set (ℝ × ℝ) := sorry
-- {(0,0)} ∪ {q | let ⟨a,b⟩ := q; |a| ≥ 1} ∪ {q | let ⟨a, b⟩ := q; |a| > 0 ∧ |a| < 1 ∧ (b < (Real.log (1 - Real.sqrt (1-a^2)) /a)^2 - |a| * (1 - Real.sqrt (1-a^2) /a ) ∨ b > (Real.log (1 - Real.sqrt (1+a^2)/a) )^2 - |a| * (1 - Real.sqrt (1+a^2)/a))}
theorem putnam_2022_a1 : ∀ a b : ℝ, (∃! x : ℝ, a * x + b = Real.log (1 + x^2)) ↔ (a, b) ∈ putnam_2022_a1_solution :=
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
: (Set.ncard Sp ≡ 0 [MOD 5]) ∨ (Set.ncard Sp ≡ 2 [MOD 5])
:= sorry

end putnam_2022

section putnam_2021

end putnam_2021

section putnam_2020

theorem putnam_2020_b5
(z : Fin 4 → ℂ)
(hzle1 : ∀ n, ‖z n‖ < 1)
(hzne1 : ∀ n, z n ≠ 1)
: 3 - z 0 - z 1 - z 2 - z 3 + (z 0) * (z 1) * (z 2) * (z 3) ≠ 0:=
sorry

end putnam_2020

section putnam_2019
open Matrix
theorem putnam_2019_b3
(n : ℕ)
(hn : n > 0)
(Q : Matrix (Fin n) (Fin n) ℝ)
(hQ0 : ∀ i j : Fin n, i ≠ j → dotProduct (Q i) (Q j) = 0 ∧ dotProduct (Qᵀ i) (Qᵀ j) = 0)
(hQ1 : ∀ i : Fin n, dotProduct (Q i) (Q i) = 1 ∧ dotProduct (Qᵀ i) (Qᵀ i) = 1)
(u : Matrix (Fin n) (Fin 1) ℝ) (hu : uᵀ*u = 1) (P : Matrix (Fin n) (Fin n) ℝ := 1 - (u * uᵀ))
: (Q - 1).det ≠ 0 → (P * Q - 1).det = 0 :=
sorry


end putnam_2019

section putnam_2018

theorem putnam_2018_a5
(f : ℝ → ℝ)
(h0 : f 0 = 0)
(h1 : f 1 = 1)
(hpos : ∀ x : ℝ, f x ≥ 0)
(hf : ContDiff ℝ ⊤ f)
: ∃n ≥ 0, ∃ x : ℝ, iteratedDeriv n f x < 0 :=
sorry

theorem putnam_2018_b2
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℂ → ℂ)
(hf : ∀ z : ℂ, f n z = ∑ i in Finset.range n, (n - i) * z^i)
: ∀ z : ℂ, ‖z‖ ≤ 1 → f n z ≠ 0 := sorry

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
: (∃ n, x n = 0) → (∃ c, Function.Periodic x c) :=
sorry

end putnam_2018

section putnam_2017

theorem putnam_2017_b3
(f : ℝ → ℝ)
(c : ℕ → ℝ)
(hc : ∀ n, c n = 0 ∨ c n = 1)
(hf : ∀ x, f x = ∑' n : ℕ, (c n) * x^n)
: f (2/3) = 3/2 → Irrational (f 1/2) :=
sorry

end putnam_2017

section putnam_2016
open Polynomial
-- TODO: Does this formalderivative evaluation work?
abbrev putnam_2016_a1_solution : ℕ := sorry
-- 8
theorem putnam_2016_a1
: (∀ P : ℤ[X], ∀ j : ℕ+, ∀ k : ℤ, 2016 ∣ (derivative^[j] P).eval k → j ≥ putnam_2016_a1_solution) ∧ (∃ P : ℤ[X], ∀ k : ℤ, 2016 ∣ (derivative^[putnam_2016_a1_solution] P).eval k) :=
sorry

end putnam_2016

section putnam_2015

end putnam_2015

section putnam_2014

theorem putnam_2014_a1
(f : ℝ → ℝ)
(hf : ∀ x : ℝ, f x = (1 - x + x ^ 2) * Real.exp x)
(hfdiff : ContDiff ℝ ⊤ f)
(c : ℕ → ℝ)
(hc : ∀ k : ℕ, c k = taylorCoeffWithin f k Set.univ 0)
: ∀ k : ℕ, c k ≠ 0 → ∃ q : Rat, c k = q ∧ (q.num = 1 ∨ Prime q.num.natAbs) := sorry

theorem putnam_2014_a5
(P : ℕ → Polynomial ℂ)
(hP : ∀ n, P n = ∑ i : Fin n, ((i : ℕ) + 1) * Polynomial.X ^ (i : ℕ))
: ∀ (j k : ℕ), (j > 0 ∧ k > 0) → j ≠ k → IsCoprime (P j) (P k) :=
sorry

end putnam_2014

section putnam_2013

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

end putnam_2013

section putnam_2012
open Matrix

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
:Equiv.Perm.signAux P = 1 ↔ (p ≡ 3 [MOD 4]) :=
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

end putnam_2011

section putnam_2010


theorem putnam_2010_a4 : ∀ n : ℕ, n > 0 → ¬Nat.Prime (10^10^10^n + 10^10^n + 10^n - 1) :=
sorry

-- TODO: 0 should be automatically inferred
theorem putnam_2010_a5
(G : Set (Fin 3 → ℝ))
(hGgrp : Group G)
(hGcross : ∀ a b : G, crossProduct a b = (a * b : Fin 3 → ℝ) ∨ crossProduct (a : Fin 3 → ℝ) b = (fun _ : Fin 3 => 0))
: ∀ a b : G, crossProduct (a : Fin 3 → ℝ) b = (fun _ : Fin 3 => 0) :=
sorry


abbrev putnam_2010_b1_solution : Prop := sorry
-- False
theorem putnam_2010_b1 : (∃ a : ℕ → ℝ, ∀ m : ℕ, m > 0 → ∑' i : ℕ, (a i)^m = m) ↔ putnam_2010_b1_solution :=
sorry


--TODO: Use this for an example
abbrev putnam_2010_b5_solution : Prop := sorry
-- False
theorem putnam_2010_b5 : (∃ f : ℝ → ℝ, StrictMono f → Differentiable ℝ f → (∀ x : ℝ, deriv f x = f (f x))) ↔ putnam_2010_b5_solution :=
sorry

end putnam_2010

section putnam_2009

open Topology MvPolynomial Filter

noncomputable def cos_matrix (n : ℕ) :  Matrix (Fin n) (Fin n) ℝ := λ i j => Real.cos ((1 : ℕ) + n * i + j)
abbrev putnam_2009_a3_solution : ℝ := sorry
-- 0
theorem putnam_2009_a3
(hM : ∀ n : ℕ, ∀ i j : Fin n, (cos_matrix n) i j = Real.cos ((1 : ℕ) + n * i + j))
: Tendsto (fun n => (cos_matrix n).det) atTop (𝓝 (putnam_2009_a3_solution)) :=
sorry

end putnam_2009

section putnam_2008

abbrev putnam_2008_b1_solution : ℕ := sorry
-- 2
def is_rational_point (x y : ℝ) : Prop := ∃ (a b : ℚ), a = x ∧ b = y
def real_circle (a b r : ℝ) : Set (ℝ × ℝ) := {p | (p.1 - a)^2 + (p.2 - b)^2 = r^2}
theorem putnam_2008_b1 :
∀ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} ≥ putnam_2008_b1_solution)
∧ ∃ a b r : ℝ, ¬ is_rational_point a b → (Set.ncard {p : ℝ × ℝ | p ∈ real_circle a b r ∧ is_rational_point p.1 p.2} = putnam_2008_b1_solution) :=
sorry

end putnam_2008

section putnam_2007

theorem putnam_2007_a5
(n p : ℕ)
(hp : Nat.Prime p)
(G : Type*) [Group G] [Fintype G]
: (∃! s : Fin n → G, ∀ i : Fin n,  orderOf (s i) = p) → n = 0 ∨ p ∣ (n+1) :=
sorry

end putnam_2007

section putnam_2006

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

theorem putnam_2005_a1 : ∀ n : ℕ, n > 0 → (∃ k : ℕ, ∃ a : Fin k → Fin 2 → ℕ, n = ∑ i : Fin k, 2^(a i 0)*3^(a i 1) ∧
(∀ i j : Fin k, i ≠ j → ¬(2^(a i 0)*3^(a i 0) ∣ 2^(a j 0)*3^(a j 1)))) :=
sorry

noncomputable abbrev putnam_2005_a5_solution : ℝ := sorry
-- Real.pi * (Real.log 2) / 8
theorem putnam_2005_a5 : ∫ x in (0:ℝ)..1, (Real.log (x+1))/(x^2 + 1) = putnam_2005_a5_solution :=
sorry

theorem putnam_2004_b2 : ∀ m n : ℕ, (m > 0 ∧ n > 0) → (factorial (m+n))/((m + n)^(m+n)) < (factorial m)/(m^m) * (factorial n)/(n^n) :=
sorry

end putnam_2005

section putnam_2004

end putnam_2004

section putnam_2003
open MvPolynomial

abbrev putnam_2003_a1_solution : ℕ → ℕ := fun n => n
theorem putnam_2003_a1
(n : ℕ)
(hn : n > 0)
: Set.ncard {a : ℕ → ℕ | ∃ k : ℕ, (k > 0) ∧ ∑ i in Finset.range k, a i = n ∧ ∀ i : ℕ, a i > 0 ∧ ∀ i : Finset.range (k-1), a i ≤ a (i + 1) ∧ a k ≤ a 1 + 1} = putnam_2003_a1_solution n :=
sorry

abbrev putnam_2003_b1_solution : Prop := sorry
-- False
theorem putnam_2003_b1 : (∃ a b c d : MvPolynomial (Fin 2) ℝ, (degreeOf 1 a = 0 ∧ degreeOf 1 b = 0 ∧ degreeOf 0 c = 0 ∧ degreeOf 0 d = 0)
→  1 + (X 0) * (X 1) + (X 0)^2 * (X 1)^2 = a * b + c * d) ↔ putnam_2003_b1_solution :=
sorry

theorem putnam_2003_b6 (f : ℝ → ℝ) (hf : Continuous f) : (∫ x in (0 : ℝ)..1, (∫ y in (0 : ℝ)..1, |f x + f y|)) ≥ (∫ x in (0 : ℝ)..1, |f x|) :=
sorry

end putnam_2003

section putnam_2002

theorem putnam_2002_a3 (n : ℕ) (hn : n ≥ 2) (T : ℕ → ℝ) (hT : ∀ n ≥ 2, T n = Set.ncard {S | S ⊆ Finset.range n ∧ ∃ k : ℤ, k = (∑ s in S, s + 1)})
: (∀ n ≥ 2, Even (T n - n)) :=
sorry

end putnam_2002

section putnam_2001

theorem putnam_2001_a1
(S : MagmaCat) -- TODO: Why MagmaCat? Magmadoesn't work I guess it is not a type but a thing on a type
(hS : ∀ a b : S, (a * b) * a = b)
: ∀ a b : S, a * (b * a) = b :=
sorry

theorem putnam_2001_a5 : ∃! a n : ℕ, a^(n+1) - (a+1)^n = 2001 :=
sorry

abbrev putnam_2001_b4_solution : Prop := sorry
-- True
theorem putnam_2001_b4
(S : Set ℚ)
(hS : S = setOf fun x : ℚ => x ≠ -1 ∧ x ≠ 0 ∧ x ≠ 1)
(f : S → S)
(hf : ∀ x : S, f x = x - 1 / (x : ℚ))
: ⋂ n : ℕ, Set.image f^[n+1] Set.univ = ∅ ↔ putnam_2001_b4_solution:= sorry

end putnam_2001

section putnam_2000

theorem putnam_2000_a2 : ∀ n : ℕ, ∃ N > n, ∃ i : Fin 6 → ℕ, n = (i 0)^2 + (i 1)^2 ∧ n + 1 = (i 2)^2 + (i 3)^2 ∧ n + 2 = (i 4)^2 + (i 5)^2 :=
sorry

theorem putnam_2000_b4
(f : ℝ → ℝ)
(hfcont : Continuous f)
(hf : ∀ x : ℝ, f (2 * x ^ 2 - 1) = 2 * x * f x)
: ∀ x : ℝ, -1 ≤ x ∧ x ≤ 1 → f x = 0 :=
sorry

end putnam_2000

section putnam_1999

theorem putnam_1999_a2
(p : Polynomial ℝ)
(hp : ∀ x : ℝ, p.eval x ≥ 0)
: ∃ k : ℕ, k > 0 ∧ ∃ f : Fin k → Polynomial ℝ,
∀ x : ℝ, p.eval x = ∑ j : Fin k, ((f j).eval x) ^ 2 :=
sorry

theorem putnam_1999_a5
(p : Polynomial ℝ)
(hp : Finset.max (Polynomial.support p) = 1999)  -- TODO: Replace with degree?
: ∃ C : ℝ, ‖p.eval 0‖ ≤ C * ∫ x in (-1)..1, ‖p.eval x‖ ∂x :=
sorry

theorem putnam_1999_b4 (f : ℝ → ℝ) (hf : ContDiff ℝ 3 f)
(hpos: ∀ n ≤ 3, ∀ x : ℝ, iteratedDeriv n f x > 0)
(hle : ∀ x : ℝ, iteratedDeriv 3 f x ≤ f x)
: ∀ x : ℝ, deriv f x ≤ 2 * (f x) :=
sorry

-- TODO: Good example about following problem statement
theorem putnam_1999_b6 (S : Finset ℤ) (hSgt : ∀ s : ℤ, s ∈ S → s > 1)
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

theorem putnam_1998_b6 : ∀ a b c : ℤ, ∃ n : ℤ, n > 0 ∧ ¬(∃ k : ℤ, k = Real.sqrt (n^3 + a * n^2 + b * n + c)) :=
sorry


end putnam_1998

section putnam_1997

end putnam_1997

section putnam_1996

end putnam_1996

section putnam_1995

end putnam_1995

section putnam_1994

end putnam_1994

section putnam_1993

end putnam_1993

section putnam_1992

end putnam_1992

section putnam_1991

end putnam_1991

section putnam_1990

end putnam_1990

section putnam_1989

end putnam_1989

section putnam_1988

end putnam_1988

section putnam_1987

end putnam_1987

section putnam_1986

end putnam_1986

section putnam_1985

end putnam_1985

section putnam_1984

end putnam_1984

section putnam_1983

end putnam_1983

section putnam_1982

end putnam_1982

section putnam_1981

end putnam_1981

section putnam_1980

end putnam_1980
