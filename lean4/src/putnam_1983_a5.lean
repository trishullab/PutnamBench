import Mathlib

open Nat

abbrev putnam_1983_a5_solution : Prop := sorry
-- True
/--
Prove or disprove that there exists a positive real number $\alpha$ such that $[\alpha_n] - n$ is even for all integers $n > 0$. (Here $[x]$ denotes the greatest integer less than or equal to $x$.)
-/
theorem putnam_1983_a5 :
    (∃ α : ℝ, α > 0 ∧ ∀ n : ℕ, n > 0 → Even (⌊α ^ n⌋ - n)) ↔ putnam_1983_a5_solution :=
  sorry
