import Mathlib
open BigOperators

open  Real Equiv

noncomputable abbrev putnam_1986_a6_solution : (ℕ → ℕ) → ℕ → ℝ := sorry
-- fun b n ↦ (∏ i : Finset.Icc 1 n, b i) / Nat.factorial n
theorem putnam_1986_a6
(n : ℕ)
(npos : n > 0)
(a : ℕ → ℝ)
(b : ℕ → ℕ)
(bpos : ∀ i ∈ Finset.Icc 1 n, b i > 0)
(binj : ∀ i ∈ Finset.Icc 1 n, ∀ j ∈ Finset.Icc 1 n, b i = b j → i = j)
(f : Polynomial ℝ)
(hf : ∀ x : ℝ, (1 - x) ^ n * f.eval x = 1 + ∑ i : Finset.Icc 1 n, (a i) * x ^ (b i))
: (f.eval 1 = putnam_1986_a6_solution b n) :=
sorry
