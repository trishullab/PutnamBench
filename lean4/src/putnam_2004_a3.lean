import Mathlib

open Nat Topology Filter

/--
Define a sequence $\{u_n\}_{n=0}^\infty$ by $u_0=u_1=u_2=1$, and thereafter by the condition that $\det \begin{pmatrix}
u_n & u_{n+1} \\
u_{n+2} & u_{n+3}
\end{pmatrix} = n!$ for all $n \geq 0$. Show that $u_n$ is an integer for all $n$. (By convention, $0!=1$.)
-/
theorem putnam_2004_a3
(u : ℕ → ℝ)
(hubase : u 0 = 1 ∧ u 1 = 1 ∧ u 2 = 1)
(hudet : ∀ n : ℕ, Matrix.det (fun i j : Fin 2 => u (n + i * 2 + j)) = (n)!)
: ∀ n : ℕ, ∃ m : ℤ, u n = m :=
sorry
