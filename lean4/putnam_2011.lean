import Mathlib
open BigOperators


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


