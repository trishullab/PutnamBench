import Mathlib
open BigOperators

open Topology Filter

abbrev putnam_2000_a1_solution : ℝ → Set ℝ := sorry
-- (fun A : ℝ => Set.Ioo 0 (A ^ 2))
theorem putnam_2000_a1
(A : ℝ)
(Apos : A > 0)
: ({S : ℝ | ∃ x : ℕ → ℝ, (∀ j : ℕ, x j > 0) ∧ (∑' j : ℕ, x j) = A ∧ (∑' j : ℕ, (x j) ^ 2) = S} = putnam_2000_a1_solution A) :=
sorry

theorem putnam_2000_a2
: ∀ n : ℕ, ∃ N : ℤ, ∃ i : Fin 6 → ℕ, N > n ∧ N = (i 0)^2 + (i 1)^2 ∧ N + 1 = (i 2)^2 + (i 3)^2 ∧ N + 2 = (i 4)^2 + (i 5)^2 :=
sorry

theorem putnam_2000_a4
: ∃ y : ℝ, Tendsto (fun B : ℝ => ∫ x in Set.Ioo 0 B, Real.sin x * Real.sin (x ^ 2)) atTop (𝓝 y) :=
sorry

theorem putnam_2000_a5
(r : ℝ)
(z : Fin 2 → ℝ)
(p : Fin 3 → (Fin 2 → ℝ))
(rpos : r > 0)
(pdiff : ∀ n m : Fin 3, (n ≠ m) → (p n ≠ p m))
(pint : ∀ (n : Fin 3) (i : Fin 2), p n i = round (p n i))
(pcirc : ∀ n : Fin 3, p n ∈ Metric.sphere z r)
: ∃ n m : Fin 3, (n ≠ m) ∧ (dist (p n) (p m) ≥ r ^ ((1 : ℝ) / 3)) :=
sorry


theorem putnam_2000_a6
(f : Polynomial ℤ)
(a : ℕ → ℤ)
(ha0 : a 0 = 0)
(ha : ∀ n : ℕ, a (n + 1) = f.eval (a n))
: ((∃ m > 0, a m = 0) → (a 1 = 0 ∨ a 2 = 0)) :=
sorry

theorem putnam_2000_b1
(N : ℕ)
(a b c : Fin N → ℤ)
(Nge1 : N ≥ 1)
(hodd : ∀ j : Fin N, Odd (a j) ∨ Odd (b j) ∨ Odd (c j))
: (∃ r s t : ℤ, {j : Fin N | Odd (r * a j + s * b j + t * c j)}.ncard ≥ (4 * N : ℝ) / 7) :=
sorry

open Nat

theorem putnam_2000_b2
: (∀ m n : ℕ, m ≥ 1 → n ≥ m → n ∣ Nat.gcd m n * Nat.choose n m) :=
sorry

open Filter Topology Set Function

theorem putnam_2000_b3
(N : ℕ)
(Npos : N > 0)
(a : Fin (N + 1) → ℝ)
(haN : a N ≠ 0)
(f : ℝ → ℝ := fun t ↦ ∑ j : Icc 1 N, a j * Real.sin (2 * Real.pi * j * t))
(mult : (ℝ → ℝ) → ℝ → ℕ)
(hmult : ∀ g : ℝ → ℝ, ∀ t : ℝ, (∃ c : ℕ, iteratedDeriv c g t ≠ 0) → (iteratedDeriv (mult g t) g t ≠ 0 ∧ ∀ k < (mult g t), iteratedDeriv k g t = 0))
(M : ℕ → ℕ := fun k ↦ ∑' t : Ico (0 : ℝ) 1, mult (iteratedDeriv k f) t)
: ((∀ i j : ℕ, i ≤ j → M i ≤ M j) ∧ Tendsto M ⊤ (𝓝 (2 * N))) :=
sorry

open Set
theorem putnam_2000_b4
(f : ℝ → ℝ)
(hfcont : Continuous f)
(hf : ∀ x : ℝ, f (2 * x ^ 2 - 1) = 2 * x * f x)
: ∀ x : ℝ, x ∈ Icc (-1) 1 → f x = 0 :=
sorry

theorem putnam_2000_b5
(S : ℕ → Set ℤ)
(hSfin : ∀ n : ℕ, Set.Finite (S n))
(hSpos : ∀ n : ℕ, ∀ s ∈ S n, s > 0)
(hSdef : ∀ n : ℕ, ∀ a : ℤ, a ∈ S (n + 1) ↔ Xor' (a - 1 ∈ S n) (a ∈ S n))
: (∀ n : ℕ, ∃ N ≥ n, S N = S 0 ∪ {M : ℤ | M - N ∈ S 0}) :=
sorry
