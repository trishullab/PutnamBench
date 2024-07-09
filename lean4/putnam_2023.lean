import Mathlib
open BigOperators

open Nat

abbrev putnam_2023_a1_solution : ℕ := sorry
-- 18
theorem putnam_2023_a1
(f : ℕ → ℝ → ℝ)
(hf : ∀ n > 0, f n = fun x : ℝ => ∏ i in Finset.Icc 1 n, Real.cos (i * x))
: putnam_2023_a1_solution > 0 ∧ |iteratedDeriv 2 (f putnam_2023_a1_solution) 0| > 2023 ∧
∀ n > 0, n < putnam_2023_a1_solution → (|iteratedDeriv 2 (f n) 0| ≤ 2023) :=
sorry

abbrev putnam_2023_a2_solution : ℕ → Set ℝ := sorry
-- fun n => {(1 : ℝ)/(factorial n), -(1 : ℝ)/(factorial n)}
theorem putnam_2023_a2
(n : ℕ)
(hn : n > 0 ∧ Even n)
(p : Polynomial ℝ)
(hp : Polynomial.Monic p ∧ p.degree = 2*n)
(S : Set ℝ := {x : ℝ | ∃ k : ℤ, x = k ∧ 1 ≤ |k| ∧ |k| ≤ n})
(hpinv : ∀ k ∈ S, p.eval (1/k) = k^2)
: {x : ℝ | p.eval (1/x) = x^2} \ S = putnam_2023_a2_solution n :=
sorry


noncomputable abbrev putnam_2023_a3_solution : ℝ := sorry
-- Real.pi / 2
theorem putnam_2023_a3
: sInf {r > 0 | ∃ f g : ℝ → ℝ, Differentiable ℝ f ∧ Differentiable ℝ g ∧
f 0 > 0 ∧ g 0 = 0 ∧ (∀ x : ℝ, |deriv f x| ≤ |g x| ∧ |deriv g x| ≤ |f x|) ∧ f r = 0} = putnam_2023_a3_solution :=
sorry

def num_ones : List ℕ → ℕ
| [] => (0 : ℕ)
| (h :: t) => if h = 1 then num_ones t + 1 else num_ones t
abbrev putnam_2023_a5_solution : Set ℂ := sorry
-- {-(3^1010 - 1)/2, -(3^1010 - 1)/2 + Real.sqrt (9^1010 - 1) * Complex.I/4, -(3^1010 - 1)/2 - Real.sqrt (9^1010 - 1) * Complex.I/4}
theorem putnam_2023_a5
: {z : ℂ | ∑ k in Finset.Icc 0 (3^1010 - 1), (-2)^(num_ones (digits 3 k)) * (z + k)^2023 = 0} = putnam_2023_a5_solution :=
sorry

-- Note: uses (ℕ → ℕ → Bool) instead of (Fin m → Fin n → Bool)
abbrev putnam_2023_b1_solution : ℕ → ℕ → ℕ := sorry
-- (fun m n : ℕ => Nat.choose (m + n - 2) (m - 1))
theorem putnam_2023_b1
(m n : ℕ)
(initcoins : ℕ → ℕ → Bool := (fun i j : ℕ => i ≤ m - 2 ∧ j ≤ n - 2))
(legalmove : (ℕ → ℕ → Bool) → (ℕ → ℕ → Bool) → Prop := (fun (coins1 : ℕ → ℕ → Bool) (coins2 : ℕ → ℕ → Bool) => ∃ i j : ℕ, i < m - 1 ∧ j < n - 1 ∧
coins1 i j ∧ !coins1 (i + 1) j ∧ !coins1 i (j + 1) ∧ !coins1 (i + 1) (j + 1) ∧ !coins2 i j ∧ !coins2 (i + 1) j ∧ !coins2 i (j + 1) ∧ coins2 (i + 1) (j + 1) ∧
(∀ i' j' : ℕ, ((i', j') ≠ (i, j) ∧ (i', j') ≠ (i + 1, j) ∧ (i', j') ≠ (i, j + 1) ∧ (i', j') ≠ (i + 1, j + 1)) → coins1 i' j' = coins2 i' j')))
(legalseq : List (ℕ → ℕ → Bool) → Prop := (fun seq : List (ℕ → ℕ → Bool) => seq.length ≥ 1 ∧ seq[0]! = initcoins ∧ (∀ i < seq.length - 1, legalmove seq[i]! seq[i + 1]!)))
(mnpos : m ≥ 1 ∧ n ≥ 1)
: {config : ℕ → ℕ → Bool | ∃ seq : List (ℕ → ℕ → Bool), legalseq seq ∧ config = seq.getLast!}.encard = putnam_2023_b1_solution m n :=
sorry

abbrev putnam_2023_b2_solution : ℕ := sorry
-- 3
theorem putnam_2023_b2
: sInf {(digits 2 (2023*n)).sum | n > 0} = putnam_2023_b2_solution :=
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
