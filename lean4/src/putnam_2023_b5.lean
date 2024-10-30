import Mathlib

open Nat Topology Filter

abbrev putnam_2023_b5_solution : Set ℕ := sorry
-- {n : ℕ | n = 1 ∨ n ≡ 2 [MOD 4]}
/--
Determine which positive integers $n$ have the following property: For all integers $m$ that are relatively prime to $n$, there exists a permutation $\pi:\{1,2,\dots,n\} \to \{1,2,\dots,n\}$ such that $\pi(\pi(k)) \equiv mk \pmod{n}$ for all $k \in \{1,2,\dots,n\}$.
-/
theorem putnam_2023_b5
  (n : ℕ) :
  n ∈ putnam_2023_b5_solution ↔
    0 < n ∧
    (∀ m : ℤ, IsRelPrime m n → ∃ p : Equiv.Perm (Fin n),
      ∀ k : Fin n, (p (p k)).1 + 1 ≡ m * (k.1 + 1) [ZMOD n]) :=
sorry
