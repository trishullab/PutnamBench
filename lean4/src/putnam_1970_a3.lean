import Mathlib
open BigOperators

open Metric Set EuclideanGeometry

abbrev putnam_1970_a3_solution : ℕ × ℕ := sorry
-- (3, 1444)
theorem putnam_1970_a3
(L : ℕ → ℕ)
(hL : ∀ n : ℕ, L n ≤ (Nat.digits 10 n).length ∧
(∀ k : ℕ, k < L n → (Nat.digits 10 n)[k]! = (Nat.digits 10 n)[0]!) ∧
(L n ≠ (Nat.digits 10 n).length → (Nat.digits 10 n)[L n]! ≠ (Nat.digits 10 n)[0]!))
: (∃ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1) ∧
(∀ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 → L (n^2) ≤ putnam_1970_a3_solution.1) ∧
(∃ m : ℕ, m^2 = putnam_1970_a3_solution.2) ∧
L (putnam_1970_a3_solution.2) = putnam_1970_a3_solution.1 ∧
(Nat.digits 10 putnam_1970_a3_solution.2)[0]! ≠ 0 ∧
∀ n : ℕ, (Nat.digits 10 (n^2))[0]! ≠ 0 ∧ L (n^2) = putnam_1970_a3_solution.1 → n^2 ≥ putnam_1970_a3_solution.2 :=
sorry
