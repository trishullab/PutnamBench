import Mathlib

abbrev putnam_1993_b1_solution : ℕ := sorry
-- 3987
/--
Find the smallest positive integer $n$ such that for every integer $m$ with $0<m<1993$, there exists an integer $k$ for which $\frac{m}{1993}<\frac{k}{n}<\frac{m+1}{1994}$.
-/
theorem putnam_1993_b1 :
    IsLeast
    {n : ℕ | 0 < n ∧
      ∀ m ∈ Set.Ioo (0 : ℤ) (1993), ∃ k : ℤ,
      (m / 1993 < (k : ℝ) / n) ∧ ((k : ℝ) / n < (m + 1) / 1994) }
    putnam_1993_b1_solution :=
  sorry
