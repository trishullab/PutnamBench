import Mathlib

open Set Topology Filter Polynomial

abbrev putnam_1979_b3_solution : ℕ → ℤ := sorry
-- fun n ↦ (n - 1) / 2
/--
Let $F$ be a finite field with $n$ elements, and assume $n$ is odd. Suppose $x^2 + bx + c$ is an irreducible polynomial over $F$. For how many elements $d \in F$ is $x^2 + bx + c + d$ irreducible?
-/
theorem putnam_1979_b3
(F : Type*) [Field F] [Fintype F]
(n : ℕ)
(hn : n = Fintype.card F)
(nodd : Odd n)
(b c : F)
(p : Polynomial F)
(hp : p = X ^ 2 + (C b) * X + (C c) ∧ Irreducible p)
: ({d : F | Irreducible (p + (C d))}.ncard = putnam_1979_b3_solution n) :=
sorry
