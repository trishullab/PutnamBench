import Mathlib

noncomputable abbrev putnam_2024_b1_solution : Set (ℕ × ℕ) := sorry
--{(2*l+1, l+1) | (l : ℕ)}
/--
Let $n$ and $k$ be positive integers. The square in the $i$th row and
$j$th column of an $n$-by-$n$ grid contains the number $i + j - k$.
For which $n$ and $k$ is it possible to select $n$ squares from the
grid, no two in the same row or column, such that the numbers
contained in the selected squares are exactly $1, ..., n$?
-/
theorem putnam_2024_b1
    (grid : (n : ℕ) → ℕ → Fin n → Fin n → ℤ)
    (grid_def : ∀ n k i j, grid n k i j = i.succ + j.succ - k)
    (valid : ℕ → ℕ → Prop)
    (valid_def : ∀ n k, valid n k ↔ 0 < n ∧ 0 < k ∧
      ∃ (f : Fin n → Fin n), f.Injective ∧
        Set.range (fun i => grid n k i (f i)) = Set.Icc (1 : ℤ) n) :
    { (n, k) | valid n k } = putnam_2024_b1_solution :=
  sorry
