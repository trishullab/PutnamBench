import Mathlib
open BigOperators

abbrev putnam_1984_a2_solution : ℚ := sorry
-- 2
theorem putnam_1984_a2
: ∑' k : Set.Ici 1, (6 ^ (k : ℕ) / ((3 ^ ((k : ℕ) + 1) - 2 ^ ((k : ℕ) + 1)) * (3 ^ (k : ℕ) - 2 ^ (k : ℕ)))) = putnam_1984_a2_solution :=
sorry

open Topology Filter
noncomputable abbrev putnam_1984_a3_solution : MvPolynomial (Fin 3) ℝ := sorry
-- (MvPolynomial.X 2) ^ 2 * ((MvPolynomial.X 0) ^ 2 - (MvPolynomial.X 1) ^ 2)
theorem putnam_1984_a3
(n : ℕ)
(a b : ℝ)
(Mn : ℝ → Matrix (Fin (2 * n)) (Fin (2 * n)) ℝ)
(polyabn : Fin 3 → ℝ)
(npos : n > 0)
(aneb : a ≠ b)
(hMnx : ∀ x : ℝ, ∀ i : Fin (2 * n), (Mn x) i i = x)
(hMna : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Even ((i : ℕ) + j)) → (Mn x) i j = a)
(hMnb : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Odd ((i : ℕ) + j)) → (Mn x) i j = b)
(hpolyabn : polyabn 0 = a ∧ polyabn 1 = b ∧ polyabn 2 = n)
: Tendsto (fun x : ℝ => (Mn x).det / (x - a) ^ (2 * n - 2)) (𝓝[≠] a) (𝓝 (MvPolynomial.eval polyabn putnam_1984_a3_solution)) :=
sorry

open Nat
abbrev putnam_1984_a5_solution : ℕ × ℕ × ℕ × ℕ × ℕ := sorry
-- (1, 9, 8, 4, 25)
theorem putnam_1984_a5
(R : Set (Fin 3 → ℝ))
(w : (Fin 3 → ℝ) → ℝ)
(hR : R = {p : Fin 3 → ℝ | (∀ i : Fin 3, p i ≥ 0) ∧ p 0 + p 1 + p 2 ≤ 1})
(hw : ∀ p : Fin 3 → ℝ, w p = 1 - p 0 - p 1 - p 2)
: let (a, b, c, d, n) := putnam_1984_a5_solution; a > 0 ∧ b > 0 ∧ c > 0 ∧ d > 0 ∧ n > 0 ∧ (∫ p in R, (p 0) ^ 1 * (p 1) ^ 9 * (p 2) ^ 8 * (w p) ^ 4 = ((a)! * (b)! * (c)! * (d)! : ℝ) / (n)!) :=
sorry

open Nat
-- Note: uses (ℕ → ℕ) instead of (Fin k → ℕ)
abbrev putnam_1984_a6_solution : Prop × ℕ := sorry
-- (True, 4)
theorem putnam_1984_a6
(lastnzdig : List ℕ → ℕ)
(f : ℕ → ℕ)
(kadistinct : ℕ → (ℕ → ℕ) → Prop := fun k : ℕ => fun a : ℕ → ℕ => (k ≥ 1 ∧ ∀ i j : Fin k, i ≠ j → a i ≠ a j))
(gpeq : (ℕ → ℕ) → ℕ → Prop := fun g : ℕ → ℕ => fun p : ℕ => (p > 0 ∧ ∀ s ≥ 1, g s = g (s + p)))
(hlastnzdig : ∀ digs : List ℕ, (∃ i : Fin digs.length, digs[i] ≠ 0) → lastnzdig digs ≠ 0 ∧ (∃ i : Fin digs.length, digs[i] = lastnzdig digs ∧ ∀ j < i, digs[j] = 0))
(hf : ∀ n > 0, f n = lastnzdig (Nat.digits 10 (n)!))
: ∃ g : ℕ → ℕ, (∀ (k : ℕ) (a : ℕ → ℕ), kadistinct k a → g (∑ i : Fin k, a i) = f (∑ i : Fin k, 5 ^ (a i))) ∧
(if putnam_1984_a6_solution.1 = True then (gpeq g putnam_1984_a6_solution.2 ∧ ∀ p : ℕ, gpeq g p → p ≥ putnam_1984_a6_solution.2) else (¬∃ p : ℕ, gpeq g p)) :=
sorry


-- Note: This problem may have multiple correct answers.
noncomputable abbrev putnam_1984_b1_solution : Polynomial ℝ × Polynomial ℝ := sorry
-- (Polynomial.X + 3, -Polynomial.X - 2)
theorem putnam_1984_b1
(f : ℕ → ℕ)
(hf : ∀ n > 0, f n = ∑ i : Set.Icc 1 n, (i)!)
: let (P, Q) := putnam_1984_b1_solution; ∀ n ≥ 1, f (n + 2) = P.eval (n : ℝ) * f (n + 1) + Q.eval (n : ℝ) * f n :=
sorry

abbrev putnam_1984_b2_solution : ℝ := sorry
-- 8
theorem putnam_1984_b2
(f : ℝ → ℝ → ℝ)
(hf : ∀ u v : ℝ, f u v = (u - v) ^ 2 + (Real.sqrt (2 - u ^ 2) - 9 / v) ^ 2)
: (∃ u : Set.Ioo 0 (Real.sqrt 2), ∃ v > 0, f u v = putnam_1984_b2_solution) ∧ (∀ u : Set.Ioo 0 (Real.sqrt 2), ∀ v > 0, f u v ≥ putnam_1984_b2_solution) :=
sorry

abbrev putnam_1984_b3_solution : Prop := sorry
-- True
theorem putnam_1984_b3
: (∀ (F : Type*) (_ : Fintype F), Fintype.card F ≥ 2 → (∃ mul : F → F → F, ∀ x y z : F, (mul x z = mul y z → x = y) ∧ (mul x (mul y z) ≠ mul (mul x y) z))) ↔ putnam_1984_b3_solution :=
sorry

open Nat
noncomputable abbrev putnam_1984_b5_solution : ℤ × Polynomial ℝ × Polynomial ℕ := sorry
-- (2, (Polynomial.X * (Polynomial.X - 1)) / 2, Polynomial.X)
theorem putnam_1984_b5
(sumbits : List ℕ → ℕ)
(d : ℕ → ℕ)
(m : ℕ)
(hsumbits : ∀ bits : List ℕ, sumbits bits = ∑ i : Fin bits.length, bits[i])
(hd : ∀ k : ℕ, d k = sumbits (Nat.digits 2 k))
(mpos : m > 0)
: let (a, f, g) := putnam_1984_b5_solution; ∑ k : Set.Icc 0 (2 ^ m - 1), (-(1 : ℤ)) ^ (d k) * (k : ℕ) ^ m = (-1) ^ m * (a : ℝ) ^ (f.eval (m : ℝ)) * (g.eval m)! :=
sorry

