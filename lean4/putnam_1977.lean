import Mathlib
open BigOperators


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

open RingHom Set

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
: Tendsto (fun N ↦ ∏ n in Finset.Icc (2 : ℤ) N, ((n : ℝ) ^ 3 - 1) / (n ^ 3 + 1)) atTop (𝓝 putnam_1977_b1_solution) :=
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
