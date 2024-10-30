import Mathlib

open Topology Filter Set Polynomial Function

/--
Prove that, for infinitely many positive integers $n$, all primes $p$ that divide $n^2 + 3$ also divide $k^2 + 3$ for some integer $k$ such that $k^2 < n$.
-/
theorem putnam_1981_b3
    (P : ℕ → Prop)
    (hP : ∀ n, P n ↔
      ∀ p : ℕ, (Nat.Prime p ∧ p ∣ n^2 + 3) →
        ∃ k : ℕ, (p : ℤ) ∣ (k : ℤ)^2 + 3 ∧ k^2 < n) :
    ∀ n : ℕ, ∃ m : ℕ, (m : ℤ) > n ∧ P m :=
  sorry
