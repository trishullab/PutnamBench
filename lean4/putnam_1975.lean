import Mathlib
open BigOperators

open Polynomial

abbrev putnam_1975_a1_solution : ((ℤ × ℤ) → ℤ) × ((ℤ × ℤ) → ℤ) := sorry
-- (fun (a, b) => a + b + 1, fun (a, b) => a - b)
theorem putnam_1975_a1
(nab : (ℤ × ℤ × ℤ) → Prop := fun (n, a, b) => n = (a^2 + (a : ℚ))/2 + (b^2 + (b : ℚ))/2)
(nxy : (ℤ × ℤ × ℤ) → Prop := fun (n, x, y) => 4*n + 1 = x^2 + y^2)
: (∀ n a b : ℤ, nab (n, a, b) → nxy (n, putnam_1975_a1_solution.1 (a, b), putnam_1975_a1_solution.2 (a, b))) ∧
∀ n : ℤ, (∃ x y : ℤ, nxy (n, x, y)) → ∃ a b : ℤ, nab (n, a, b) :=
sorry

abbrev putnam_1975_a2_solution : (ℝ × ℝ) → Prop := sorry
-- fun (b, c) => c < 1 ∧ c - b > -1 ∧ c + b > -1
theorem putnam_1975_a2
: ∀ b c : ℝ, (∀ z : ℂ, (X^2 + (C (b : ℂ))*X + (C (c : ℂ))).eval z = 0 → ‖z‖ < 1) ↔ putnam_1975_a2_solution (b, c) :=
sorry

noncomputable abbrev putnam_1975_a3_solution : ((ℝ × ℝ × ℝ) → (ℝ × ℝ × ℝ)) × ((ℝ × ℝ × ℝ) → (ℝ × ℝ × ℝ)) := sorry
-- (fun (a, b, c) => ((a/b)^(1/(b - a)), (1 - ((a/b)^(1/(b - a)))^b)^(1/b), 0), fun (a, b, c) => (0, (1 - ((b/c)^(1/(c - b)))^b)^(1/b), (b/c)^(1/(c - b))))
theorem putnam_1975_a3
(a b c : ℝ)
(hi : 0 < a ∧ a < b ∧ b < c)
(P : (ℝ × ℝ × ℝ) → Prop := fun (x, y, z) => x ≥ 0 ∧ y ≥ 0 ∧ z ≥ 0 ∧ x^b + y^b + z^b = 1)
(f : (ℝ × ℝ × ℝ) → ℝ := fun (x, y, z) => x^a + y^b + z^c)
: (P (putnam_1975_a3_solution.1 (a, b, c)) ∧ ∀ x y z : ℝ, P (x, y, z) →
f (x, y, z) ≤ f (putnam_1975_a3_solution.1 (a, b, c))) ∧
(P (putnam_1975_a3_solution.2 (a, b, c)) ∧ ∀ x y z : ℝ, P (x, y, z) →
f (x, y, z) ≥ f (putnam_1975_a3_solution.2 (a, b, c))) :=
sorry

abbrev putnam_1975_b1_solution : ℤ := sorry
-- 7
theorem putnam_1975_b1
(H : Set (ℤ × ℤ) := {(x, y) : (ℤ × ℤ) | ∃ u v w : ℤ, (x, y) = (u*3 + v*4 + w*5, u*8 + v*(-1) + w*4)})
: (∃ b : ℤ, H = {(x, y) : (ℤ × ℤ) | ∃ u v : ℤ, (x, y) = (u, u*b + v*putnam_1975_b1_solution)}) ∧ putnam_1975_b1_solution > 0 :=
sorry

open Multiset

noncomputable abbrev putnam_1975_b3_solution : ℕ → ℝ := sorry
-- fun k : ℕ => 1/(Nat.factorial k)
theorem putnam_1975_b3
: ∀ k : ℕ, k > 0 → (∀ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k →
(esymm a k)/(esymm a 1)^k ≤ putnam_1975_b3_solution k) ∧
∀ M : ℝ, M < putnam_1975_b3_solution k → (∃ a : Multiset ℝ, (∀ i ∈ a, i > 0) ∧ card a ≥ k ∧
(esymm a k)/(esymm a 1)^k > M) :=
sorry

abbrev putnam_1975_b4_solution : Prop := sorry
-- False
theorem putnam_1975_b4
(P : ℝ × ℝ → Prop := fun (x, y) => x^2 + y^2 = 1)
: (∃ B ⊆ setOf P, IsClosed B ∧ ∀ x y : ℝ, P (x, y) → Xor' ((x, y) ∈ B) ((-x, -y) ∈ B)) ↔ putnam_1975_b4_solution :=
sorry

theorem putnam_1975_b5
(e : ℝ := Real.exp 1)
(f : ℕ → ℝ → ℝ)
(h0 : ∀ x : ℝ, f 0 x = e^x)
(hf : ∀ n : ℕ, ∀ x : ℝ, f (n + 1) x = x * (deriv (f n) x))
: ∑' n : ℕ, (f n 1)/(Nat.factorial n) = e^e :=
sorry

