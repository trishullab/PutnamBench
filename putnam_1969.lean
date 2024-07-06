import Mathlib
open BigOperators

open Matrix Filter Topology Set Nat

abbrev putnam_1969_a1_solution : Set (Set ℝ) := sorry
-- {{x} | x : ℝ} ∪ {Set.Ici x | x : ℝ} ∪ {Set.Iic x | x : ℝ} ∪ {Set.Iio x | x : ℝ} ∪ {Set.Ioi x | x : ℝ} ∪ {Set.univ}
theorem putnam_1969_a1
: {{z : ℝ | ∃ x : Fin 2 → ℝ, MvPolynomial.eval x f = z} | f : MvPolynomial (Fin 2) ℝ} = putnam_1969_a1_solution :=
sorry

theorem putnam_1969_a2
(D : (n : ℕ) → Matrix (Fin n) (Fin n) ℝ := fun n => λ i j => |i.1 - j.1| )
: ∀ n, n ≥ 2 → (D n).det = (-1)^((n : ℤ)-1) * ((n : ℤ)-1) * 2^((n : ℤ)-2) :=
sorry

theorem putnam_1969_a4
: Tendsto (fun n => ∑ i in Finset.Icc (1 : ℤ) n, (-1)^(i+1)*(i : ℝ)^(-i)) atTop (𝓝 (∫ x in Ioo (0 : ℝ) 1, x^x)) :=
sorry

theorem putnam_1969_a5
: ∀ x y : ℝ → ℝ, (Differentiable ℝ x ∧ Differentiable ℝ y) → ∀ t > 0,
(x 0 = y 0 ↔ ∃ u : ℝ → ℝ, Continuous u ∧ x t = 0 ∧ y t = 0 ∧
deriv x = (fun _ : ℝ ↦ -2) * y + u ∧ deriv y = (fun _ : ℝ ↦ -2) * x + u) :=
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
(hn : 24 ∣ (n + 1 : ℤ))
: 24 ∣ ∑ d in divisors n, (d : ℤ) :=
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
(ha : StrictMono a ∧ (∀ x : ℕ, a > 0))
(hinvasum : ∃ C : ℝ, Tendsto (fun n => ∑ i : Fin n, 1/(a i)) atTop (𝓝 C))
(k : ℝ → ℕ := fun x => {n | a n ≤ x}.ncard)
: Tendsto (fun t => (k t)/t) atTop (𝓝 0) := sorry

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
