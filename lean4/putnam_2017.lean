import Mathlib
open BigOperators


abbrev putnam_2017_a1_solution : Set ℤ := sorry
-- {x : ℤ | x > 0 ∧ (x = 1 ∨ 5 ∣ x)}
theorem putnam_2017_a1
(Q : Set (Set ℤ))
(Spos : ∀ S ∈ Q, ∀ x ∈ S, x > 0)
(S2 : ∀ S ∈ Q, 2 ∈ S)
(Sn : ∀ S ∈ Q, ∀ n, n ^ 2 ∈ S → n ∈ S)
(Sn5 : ∀ S ∈ Q, ∀ n, n ∈ S → (n + 5) ^ 2 ∈ S)
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
(mina : ℤ)
(hmina : mina ≥ 0)
(S : ℤ → ℕ → ℤ := fun a k ↦ ∑ i : Fin k, a + i)
(p : ℤ → ℕ → Prop := fun N k ↦ ∃ a > 0, S a k = N)
(q : ℤ → Prop := fun N ↦ p N 2017 ∧ ∀ k : ℕ, k > 1 → k ≠ 2017 → ¬p N k)
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
(hs : ∀ x : (Finset.range 64 → Finset.Icc 1 2017), x ∈ S ↔ (Injective x ∧ (2017 ∣ (∑ i : Finset.range 64, if i ≤ (⟨1, by norm_num⟩ : Finset.range 64) then (x i : ℤ) else i * (x i : ℤ)))))
: (S.card = putnam_2017_b6_solution) :=
sorry
