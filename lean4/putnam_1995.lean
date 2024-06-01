import Mathlib
open BigOperators


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

