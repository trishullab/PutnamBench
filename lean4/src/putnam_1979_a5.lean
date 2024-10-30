import Mathlib

open Set

/--
Let $S(x)$ denote the sequence $\lfloor 0 \rfloor, \lfloor x \rfloor, \lfloor 2x \rfloor, \lfloor 3x \rfloor, \dots$, where $\lfloor x \rfloor$ denotes the greatest integer less than or equal to $x$. Prove that there exist distinct real roots $\alpha$ and $\beta$ of $x^3 - 10x^2 + 29x - 25$ such that infinitely many positive integers appear in both $S(\alpha)$ and $S(\beta)$.
-/
theorem putnam_1979_a5
(S : ℝ → ℕ → ℤ)
(hS : S = fun x : ℝ => fun n : ℕ => Int.floor (n*x))
(P : ℝ → Prop)
(hP : ∀ x, P x ↔ x^3 - 10*x^2 + 29*x - 25 = 0)
: ∃ α β : ℝ, α ≠ β ∧ P α ∧ P β ∧ ∀ n : ℕ, ∃ m : ℤ, m > n ∧ ∃ c d : ℕ, S α c = m ∧ S β d = m :=
sorry
