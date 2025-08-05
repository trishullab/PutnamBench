import Mathlib

open Set Nat

noncomputable abbrev putnam_1974_a4_solution : ℕ → ℚ := sorry
-- (fun n ↦ (1 : ℚ) / (2 ^ (n - 1)) * (n * (n - 1).choose ⌊n / 2⌋₊))

/--
Evaluate in closed form: $\frac{1}{2^{n-1}} \sum_{k < n/2} (n-2k)*{n \choose k}$.
-/
theorem putnam_1974_a4
    (n : ℕ)
    (hn : 0 < n) :
    (1 : ℚ) / (2 ^ (n - 1)) * ∑ k ∈ Finset.Icc 0 ⌊n / 2⌋₊, (n - 2 * k) * (n.choose k) =
    putnam_1974_a4_solution n :=
  sorry
