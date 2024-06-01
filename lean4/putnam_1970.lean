import Mathlib
open BigOperators

open Metric Set

theorem putnam_1970_a1
(a b : ℝ)
(ha : a > 0)
(hb : b > 0)
(f : ℝ → ℝ := fun x : ℝ => Real.exp (a*x) * Real.cos (b*x))
(p : ℕ → ℝ)
(hp : ∃ c : ℝ, c > 0 ∧ ∀ x ∈ ball 0 c, ∑' n : ℕ, (p n)*x^n = f x)
(S : Set ℕ := {n : ℕ | p n = 0})
: S = ∅ ∨ ¬Finite S :=
sorry

abbrev putnam_1970_a3_solution : ℕ × ℕ := sorry
-- (3, 1444)
theorem putnam_1970_a3
(L : ℕ → ℕ)
(hL : ∀ n : ℕ, n > 0 → L n ≤ (Nat.digits 10 n).length ∧
(∀ k : ℕ, k < L n → (Nat.digits 10 n)[k]! = (Nat.digits 10 n)[0]!) ∧
(L n ≠ (Nat.digits 10 n).length → (Nat.digits 10 n)[L n]! ≠ (Nat.digits 10 n)[0]!))
: (∃ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1) ∧
(∀ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 → L (n^2) ≤ putnam_1970_a3_solution.1) ∧
(∃ m : ℕ, m^2 = putnam_1970_a3_solution.2) ∧
L (putnam_1970_a3_solution.2) = putnam_1970_a3_solution.1 ∧
(Nat.digits 10 putnam_1970_a3_solution.2)[0]! ≠ 0 ∧
∀ n : ℕ, n > 0 ∧ (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1 → n^2 ≥ putnam_1970_a3_solution.2 :=
sorry

open Filter Topology
theorem putnam_1970_a4
(x : ℕ → ℝ)
(hxlim : Tendsto (fun n => x n - x (n-2)) atTop (𝓝 0))
: Tendsto (fun n => (x n - x (n-1))/n) atTop (𝓝 0) :=
sorry

noncomputable abbrev putnam_1970_b1_solution : ℝ := sorry
-- Real.exp (2 * Real.log 5 - 4 + 2 * Real.arctan 2)
theorem putnam_1970_b1
: Tendsto (fun n => 1/(n^4) * ∏ i in Finset.Icc (1 : ℤ) (2*n), ((n^2 + i^2) : ℝ)^((1 : ℝ)/n)) atTop (𝓝 putnam_1970_b1_solution) :=
sorry

theorem putnam_1970_b3
(S : Set (ℝ × ℝ))
(a b : ℝ)
(hab : a < b)
(hS : ∀ s ∈ S, s.1 ∈ Ioo a b)
(hSclosed : IsClosed S)
: IsClosed {y | ∃ x : ℝ, ⟨x,y⟩ ∈ S} :=
sorry

theorem putnam_1970_b5
(ramp : ℤ → (ℝ → ℝ) := fun n => (fun x => if x ≤ -n then -n else (if -n < x ∧ x ≤ n then x else n)))
(F : ℝ → ℝ)
: Continuous F ↔ (∀ n : ℕ, Continuous ((ramp n) ∘ F)) :=
sorry
