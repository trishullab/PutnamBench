import Mathlib

open Set Filter Topology Real

abbrev putnam_1985_a4_solution : Set (Fin 100) := sorry
-- {87}
/--
Define a sequence $\{a_i\}$ by $a_1=3$ and $a_{i+1}=3^{a_i}$ for $i \geq 1$. Which integers between $00$ and $99$ inclusive occur as the last two digits in the decimal expansion of infinitely many $a_i$?
-/
theorem putnam_1985_a4
    (a : ℕ → ℕ)
    (ha1 : a 1 = 3)
    (ha : ∀ i ≥ 1, a (i + 1) = 3 ^ a i) :
    {k : Fin 100 | ∀ N : ℕ, ∃ i ≥ N, a i % 100 = k} = putnam_1985_a4_solution :=
  sorry
