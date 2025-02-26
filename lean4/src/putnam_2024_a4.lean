import Mathlib

noncomputable abbrev putnam_2024_a4_solution : Set ℕ := sorry
--{7}
/--
Find all primes $p > 5$ for which there exists an integer $a$ and an integer $r$ satisfying $1 \le r \le p - 1$ with the following property:
the sequence $1, a, a^2, ..., a^{p-5}$ can be rearranged to form a sequence $b_0, ..., b_{p-5}$ such that $b_n - b_{n-1} - r$ is divisible by $p$ for $1 \le n \le p - 5$.
-/
theorem putnam_2024_a4 :
    {p : ℕ | p.Prime ∧ 5 < p ∧ ∃ a r : ℤ, 1 ≤ r ∧ r ≤ p - 1 ∧
      ∃ e : ℕ → ℕ, Set.BijOn e (Set.Icc 0 (p - 5 : ℕ)) (Set.Icc 0 (p - 5 : ℕ)) ∧
        ∀ n, 1 ≤ n ∧ n ≤ (p - 5 : ℕ) →
          (p : ℤ) ∣ a ^ (e n : ℕ) - a ^ (e (n - 1) : ℕ) - r} =
    putnam_2024_a4_solution :=
  sorry
