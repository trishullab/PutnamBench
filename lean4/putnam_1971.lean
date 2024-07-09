import Mathlib
open BigOperators

open Set

theorem putnam_1971_a1
(S : Set (ℤ × ℤ × ℤ))
(hS : S.ncard = 9)
(L : (ℤ × ℤ × ℤ) × (ℤ × ℤ × ℤ) → Set (ℝ × ℝ × ℝ) := fun ((a, b, c), (d, e, f)) =>
{(t*a + (1-t)*d, t*b + (1-t)*e, t*c + (1-t)*f) | t ∈ Ioo (0 : ℝ) 1})
: ∃ x y z : ℤ, ∃ P Q : ℤ × ℤ × ℤ, P ∈ S ∧ Q ∈ S ∧ P ≠ Q ∧ ((x : ℝ), (y : ℝ), (z : ℝ)) ∈ L (P, Q) :=
sorry

abbrev putnam_1971_a2_solution : Set (Polynomial ℝ) := sorry
-- {Polynomial.X}
theorem putnam_1971_a2
: ∀ P : Polynomial ℝ, (P.eval 0 = 0 ∧ (∀ x : ℝ, P.eval (x^2 + 1) = (P.eval x)^2 + 1)) ↔ P ∈ putnam_1971_a2_solution :=
sorry

theorem putnam_1971_a3
(a b c : ℝ × ℝ)
(R : ℝ)
(habclattice : a.1 = round a.1 ∧ a.2 = round a.2 ∧ b.1 = round b.1 ∧ b.2 = round b.2 ∧ c.1 = round c.1 ∧ c.2 = round c.2)
(habcneq : a ≠ b ∧ a ≠ c ∧ b ≠ c)
(hR : R > 0)
(oncircle : (ℝ × ℝ) → ℝ → (ℝ × ℝ) → Prop := fun C r p => Euclidean.dist p C = r)
(hcircle : ∃ C : ℝ × ℝ, oncircle C R a ∧ oncircle C R b ∧ oncircle C R c)
: (Euclidean.dist a b) * (Euclidean.dist a c) * (Euclidean.dist b c) ≥ 2 * R :=
sorry

open MvPolynomial
theorem putnam_1971_a4
(ε : ℝ)
(hε : 0 < ε ∧ ε < 1)
(P : ℕ → ℝ → MvPolynomial (Fin 2) ℝ := fun n δ => (MvPolynomial.X 0 + MvPolynomial.X 1)^n * ((MvPolynomial.X 0)^2 - (MvPolynomial.C (2 - δ))*(MvPolynomial.X 0)*(MvPolynomial.X 1) + (MvPolynomial.X 1)^2))
: ∃ N : ℕ, ∀ n ≥ N, ∀ i : Fin 2 →₀ ℕ, MvPolynomial.coeff i (P n ε) ≥ 0 :=
sorry

abbrev putnam_1971_a5_solution : ℤ × ℤ := sorry
-- (11, 8)
theorem putnam_1971_a5
(a b : ℤ)
(hab : a > 0 ∧ b > 0 ∧ a > b)
(pab : ℤ → ℤ → Prop := fun x y : ℤ ↦ {s : ℕ | ¬∃ m n : ℕ, m*x + n*y = s}.ncard = 35 ∧ ¬∃ m n : ℕ, m*x + n*y = 58)
: pab a b ↔ a = putnam_1971_a5_solution.1 ∧ b = putnam_1971_a5_solution.2 :=
sorry

theorem putnam_1971_a6
(c : ℝ)
(hc : ∀ n : ℤ, n > 0 → ∃ m : ℤ, (n : ℝ)^c = m)
: ∃ m : ℤ, m ≥ 0 ∧ c = m :=
sorry

theorem putnam_1971_b1
(S : Type*) [Mul S]
(hself : ∀ x : S, x * x = x)
(h2 : ∀ x y z : S, (x * y) * z = (y * z) * x)
: (∀ x y z : S, (x * y) * z = x * (y * z)) ∧ (∀ x y : S, x * y = y * x) :=
sorry

abbrev putnam_1971_b2_solution : Set (ℝ → ℝ) := sorry
-- {fun x : ℝ => (x^3 - x^2 - 1)/(2 * x * (x - 1))}
theorem putnam_1971_b2
(S : Set ℝ := univ \ {0, 1})
(P : (ℝ → ℝ) → Prop := fun (F : ℝ → ℝ) => ∀ x ∈ S, F x + F ((x - 1)/x) = 1 + x)
: (∀ F ∈ putnam_1971_b2_solution, P F) ∧ ∀ f : ℝ → ℝ, P f → ∃ F ∈ putnam_1971_b2_solution, (∀ x ∈ S, f x = F x) :=
sorry

theorem putnam_1971_b3
(T : ℝ)
(hT : T > 0)
: MeasureTheory.volume {t : ℝ | t ≥ T ∧ Nat.floor t = 2 * (Nat.floor (t - T))} = 1 :=
sorry

theorem putnam_1971_b6
(δ : ℤ → ℤ := fun n => sSup {t | Odd t ∧ t ∣ n})
: ∀ x : ℤ, x > 0 → |∑ i in Finset.Icc 1 x, (δ i)/(i : ℚ) - 2*x/3| < 1 :=
sorry
