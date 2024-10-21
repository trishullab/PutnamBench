import Mathlib

open Topology Filter Nat

abbrev putnam_1984_b3_solution : Prop := sorry
-- True
/--
Prove or disprove the following statement: If $F$ is a finite set with two or more elements, then there exists a binary operation $*$ on F such that for all $x,y,z$ in $F$,
\begin{enumerate}
\item[(i)] $x*z=y*z$ implies $x=y$ (right cancellation holds), and
\item[(ii)] $x*(y*z) \neq (x*y)*z$ (\emph{no} case of associativity holds).
\end{enumerate}
-/
theorem putnam_1984_b3
: (∀ (F : Type*) (_ : Fintype F), Fintype.card F ≥ 2 → (∃ mul : F → F → F, ∀ x y z : F, (mul x z = mul y z → x = y) ∧ (mul x (mul y z) ≠ mul (mul x y) z))) ↔ putnam_1984_b3_solution :=
sorry
