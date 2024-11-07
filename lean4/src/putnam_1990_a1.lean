import Mathlib

open Filter Topology Nat

abbrev putnam_1990_a1_solution : (ℕ → ℤ) × (ℕ → ℤ) := sorry
-- (fun n : ℕ => (n)!, fun n : ℕ => 2 ^ n)
/--
Let $T_0=2,T_1=3,T_2=6$, and for $n \geq 3$, $T_n=(n+4)T_{n-1}-4nT_{n-2}+(4n-8)T_{n-3}$. The first few terms are $2,3,6,14,40,152,784,5168,40576$. Find, with proof, a formula for $T_n$ of the form $T_n=A_n+B_n$, where $\{A_n\}$ and $\{B_n\}$ are well-known sequences.
-/
theorem putnam_1990_a1
    (T : ℕ → ℤ)
    (hT012 : T 0 = 2 ∧ T 1 = 3 ∧ T 2 = 6)
    (hTn : ∀ n, T (n + 3) = (n + 7) * T (n + 2) - 4 * (n + 3) * T (n + 1) + (4 * n + 4) * T n) :
    T = putnam_1990_a1_solution.1 + putnam_1990_a1_solution.2 :=
  sorry
