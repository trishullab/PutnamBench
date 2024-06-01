import Mathlib
open BigOperators


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

open Set
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

abbrev putnam_1979_b3_solution : ℕ → ℤ := sorry
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
