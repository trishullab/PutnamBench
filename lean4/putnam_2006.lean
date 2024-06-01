import Mathlib
open BigOperators


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

