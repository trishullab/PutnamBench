import Mathlib
open BigOperators

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

