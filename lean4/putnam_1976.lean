import Mathlib
open BigOperators


section putnam_1976_a2 -- TODO: This needs to be account for in the script
open MvPolynomial

theorem putnam_1976_a2
(P : MvPolynomial (Fin 2) ℤ := (X 0)^2*(X 1) + (X 0)*(X 1)^2)
(Q : MvPolynomial (Fin 2) ℤ := (X 0)^2 + (X 0)*(X 1) + (X 2)^2)
(F : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n - (X 0)^n - (X 1)^n)
(G : ℕ → MvPolynomial (Fin 2) ℤ := fun n : ℕ => ((X 0) + (X 1))^n + (X 0)^n + (X 1)^n)
(i : Fin 2 → MvPolynomial (Fin 2) ℤ := fun j : Fin 2 => ite (j = 0) P Q)
: ∀ n : ℕ, n > 0 → ∃ A : MvPolynomial (Fin 2) ℤ, F n = aeval i A ∨ G n = aeval i A :=
sorry

end putnam_1976_a2

abbrev putnam_1976_a3_solution : Set (ℕ × ℕ × ℕ × ℕ) := sorry
-- {(3, 2, 2, 3), (2, 3, 3, 2)}
theorem putnam_1976_a3
: {(p, r, q, s) : ℕ × ℕ × ℕ × ℕ | Nat.Prime p ∧ Nat.Prime q ∧ r > 1 ∧ s > 1 ∧ |(p^r : ℤ) - q^s| = 1} = putnam_1976_a3_solution :=
sorry

open Polynomial

noncomputable abbrev putnam_1976_a4_solution : (ℝ → ℝ) × (ℝ → ℝ) := sorry
-- (fun r : ℝ => -1/(r + 1), fun r : ℝ => -(r + 1)/r)
theorem putnam_1976_a4
(a b c d : ℤ)
(r : ℝ)
(P : Polynomial ℚ := X^3 + (C (a : ℚ))*X^2 + (C (b : ℚ))*X - (C 1))
(Q : Polynomial ℚ := X^3 + (C (c : ℚ))*X^2 + (C (d : ℚ))*X + (C 1))
(hP : aeval r P = 0 ∧ Irreducible P)
(hQ : aeval (r + 1) Q = 0)
: ∃ s : ℝ, aeval s P = 0 ∧ (s = putnam_1976_a4_solution.1 r ∨ s = putnam_1976_a4_solution.2 r) :=
sorry

theorem putnam_1976_a6
(f : ℝ → ℝ)
(hfdiff : ContDiff ℝ 2 f)
(hfbd : ∀ x : ℝ, |f x| ≤ 1)
(hf0 : (f 0)^2 + (deriv f 0)^2 = 4)
: ∃ y : ℝ, (f y) + (iteratedDeriv 2 f y) = 0 :=
sorry

open Filter Topology

abbrev putnam_1976_b1_solution : ℕ × ℕ := sorry
-- (4, 1)
theorem putnam_1976_b1
: Tendsto (fun n : ℕ => ((1 : ℝ)/n)*∑ k in Finset.Icc 1 n, (Nat.floor ((2*n)/k) - 2*Nat.floor (n/k))) ⊤
(𝓝 (Real.log putnam_1976_b1_solution.1 - putnam_1976_b1_solution.2)) :=
sorry

abbrev putnam_1976_b2_solution : ℕ × Set (List (ℤ × ℤ)) := sorry
-- (8, {[(0, 0)], [(2, 0)], [(0, 1)], [(0, 2)], [(0, 3)], [(0, 4)], [(0, 5)], [(0, 6)]})
theorem putnam_1976_b2
(G : Type*) [Group G]
(A B : G)
(word : List (ℤ × ℤ) → G := fun w : List (ℤ × ℤ) => (List.map (fun t : ℤ × ℤ => A^(t.1)*B^(t.2)) w).prod)
(hG : ∀ g : G, ∃ w : List (ℤ × ℤ), g = word w)
(hA : A^4 = 1 ∧ A^2 ≠ 1)
(hB : B^7 = 1 ∧ B ≠ 1)
(h1 : A*B*A^(-(1 : ℤ))*B = 1)
(S : Set G := {g : G | ∃ C : G, C^2 = g})
: S.ncard = putnam_1976_b2_solution.1 ∧ S = {word w | w ∈ putnam_1976_b2_solution.2} :=
sorry

noncomputable abbrev putnam_1976_b5_solution : ℕ → Polynomial ℤ := sorry
-- fun n => C (Nat.factorial n)
theorem putnam_1976_b5
: ∀ n : ℕ, ∑ k in Finset.range (n + 1), C ((-(1 : ℤ))^k * Nat.choose n k) * (X - (C (k : ℤ)))^n = putnam_1976_b5_solution n :=
sorry

theorem putnam_1976_b6
(σ : ℕ → ℕ := fun N : ℕ => ∑ d in Nat.divisors N, d)
(quasiperfect : ℕ → Prop := fun N : ℕ => σ N = 2*N + 1)
: ∀ N : ℕ, quasiperfect N → ∃ m : ℤ, Odd m ∧ m^2 = N :=
sorry

