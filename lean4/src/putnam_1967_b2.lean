import Mathlib

open Nat Topology Filter

/--
Let $0 \leq p \leq 1$ and $0 \leq r \leq 1$ and consider the identities
\begin{enumerate}
\item[(a)] $(px+(1-p)y)^2=Ax^2+Bxy+Cy^2$,
\item[(b)] $(px+(1-p)y)(rx+(1-r)y)=\alpha x^2+\beta xy+\gamma y^2$.
\end{enumerate}
Show that (with respect to $p$ and $r$)
\begin{enumerate}
\item[(a)] $\max\{A,B,C\} \geq 4/9$,
\item[(b)] $\max\{\alpha,\beta,\gamma\} \geq 4/9$.
\end{enumerate}
-/
theorem putnam_1967_b2
(p r A B C α β γ : ℝ)
(prbound : 0 ≤ p ∧ p ≤ 1 ∧ 0 ≤ r ∧ r ≤ 1)
(id1 : ∀ x y : ℝ, (p * x + (1 - p) * y) ^ 2 = A * x ^ 2 + B * x * y + C * y ^ 2)
(id2 : ∀ x y : ℝ, (p * x + (1 - p) * y) * (r * x + (1 - r) * y) = α * x ^ 2 + β * x * y + γ * y ^ 2)
: max (max A B) C ≥ 4 / 9 ∧ max (max α β) γ ≥ 4 / 9 :=
sorry
