import Mathlib
open BigOperators

open Nat

theorem putnam_2005_a1
: ∀ n : ℤ, n > 0 → (∃ k : ℕ, ∃ a : Fin k → Fin 2 → ℕ, n = ∑ i : Fin k, 2^(a i 0)*3^(a i 1) ∧
(∀ i j : Fin k, i ≠ j → ¬(2^(a i 0)*3^(a i 0) ∣ 2^(a j 0)*3^(a j 1)))) :=
sorry

theorem putnam_2005_a3
(p : Polynomial ℂ)
(n : ℕ)
(g : ℂ → ℂ)
(pdeg : p.degree = n)
(pzeros : ∀ z : ℂ, p.eval z = 0 → Complex.abs z = 1)
(hg : ∀ z : ℂ, g z = (p.eval z) / z ^ ((n : ℂ) / 2))
: ∀ z : ℂ, (deriv g z = 0) → (Complex.abs z = 1) :=
sorry

theorem putnam_2005_a4
(n : ℕ)
(H : Matrix (Fin n) (Fin n) ℝ)
(a b : ℕ)
(S : Matrix (Fin a) (Fin b) ℝ)
(npos : n ≥ 1)
(Hentries : ∀ i j : Fin n, H i j = 1 ∨ H i j = -1)
(Hortho : H.HasOrthogonalRows)
(hab : 1 ≤ a ∧ a ≤ n ∧ 1 ≤ b ∧ b ≤ n)
(Ssub : ∃ (rri : Fin a → Fin n) (cri : Fin b → Fin n), rri.Injective ∧ cri.Injective ∧ S = H.submatrix rri cri)
(Sentries : ∀ (i : Fin a) (j : Fin b), S i j = 1)
: a * b ≤ n :=
sorry

noncomputable abbrev putnam_2005_a5_solution : ℝ := sorry
-- Real.pi * (Real.log 2) / 8
theorem putnam_2005_a5 : ∫ x in (0:ℝ)..1, (Real.log (x+1))/(x^2 + 1) = putnam_2005_a5_solution :=
sorry

-- Note: There might be multiple possible correct answers.
noncomputable abbrev putnam_2005_b1_solution : MvPolynomial (Fin 2) ℝ := sorry
-- (MvPolynomial.X 1 - 2 * MvPolynomial.X 0) * (MvPolynomial.X 1 - 2 * MvPolynomial.X 0 - 1)
theorem putnam_2005_b1
: putnam_2005_b1_solution ≠ 0 ∧ ∀ a : ℝ, MvPolynomial.eval (fun n : Fin 2 => if (n = 0) then (Int.floor a : ℝ) else (Int.floor (2 * a))) putnam_2005_b1_solution = 0 :=
sorry

-- Note: uses ℕ → ℕ instead of Fin n → ℕ
abbrev putnam_2005_b2_solution : Set (ℕ × (ℕ → ℤ)) := sorry
-- {(n, k) : ℕ × (ℕ → ℤ) | (n = 1 ∧ k 0 = 1) ∨ (n = 3 ∧ (k '' {0, 1, 2} = {2, 3, 6})) ∨ (n = 4 ∧ (∀ i : Fin 4, k i = 4))}
theorem putnam_2005_b2
(n : ℕ)
(k : ℕ → ℤ)
(nkpos : Prop)
(nkeq1 : Prop)
(nkeq2 : Prop)
(hnkpos : nkpos = (n > 0 ∧ (∀ i : Fin n, k i > 0)))
(hnkeq1 : nkeq1 = (∑ i : Fin n, k i = 5 * n - 4))
(hnkeq2 : nkeq2 = (∑ i : Fin n, (1 : ℝ) / (k i) = 1))
: (nkpos ∧ nkeq1 ∧ nkeq2) ↔ (n, k) ∈ putnam_2005_b2_solution :=
sorry

-- Note: uses (ℝ → ℝ) instead of (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ))
abbrev putnam_2005_b3_solution : Set (Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ)) := sorry
-- {f : Set.Ioi (0 : ℝ) → Set.Ioi (0 : ℝ) | ∃ c d : ℝ, c > 0 ∧ d > 0 ∧ (d = 1 → c = 1) ∧ (∀ x : Set.Ioi (0 : ℝ), f x = c * x ^ d)}
theorem putnam_2005_b3
(f : ℝ → ℝ)
(fexa : Prop)
(hfexa : fexa = (∃ a > 0, ∀ x > 0, deriv f (a / x) = x / f x))
: (DifferentiableOn ℝ f (Set.Ioi (0 : ℝ)) ∧ fexa) ↔ (∃ f' ∈ putnam_2005_b3_solution, ∀ x : Set.Ioi (0 : ℝ), f' x = f x) :=
sorry

theorem putnam_2005_b4
(m n : ℤ)
(mnpos : m > 0 ∧ n > 0)
(f : ℤ → ℤ → ℕ)
(hf : ∀ m' > 0, ∀ n' > 0, f m' n' = Set.encard {x : Finset.Icc 1 n' → ℤ | ∑ i : Finset.Icc 1 n', |x i| ≤ m'})
: f m n = f n m :=
sorry

theorem putnam_2005_b6
(n : ℕ)
(v : Equiv.Perm (Fin n) → ℕ)
(npos : n ≥ 1)
(hv : ∀ p : Equiv.Perm (Fin n), v p = Set.encard {i : Fin n | p i = i})
: (∑ p : Equiv.Perm (Fin n), (Equiv.Perm.signAux p : ℤ) / (v p + 1 : ℝ)) = (-1) ^ (n + 1) * (n / (n + 1 : ℝ)) :=
sorry
