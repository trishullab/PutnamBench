import Mathlib

open Topology Filter

/--
Prove that $f(n) = 1-n$ is the only integer-valued function defined on the integers that satisfies the following conditions.
\begin{itemize}
\item[(i)] $f(f(n)) = n$, for all integers $n$;
\item[(ii)] $f(f(n+2)+2) = n$ for all integers $n$;
\item[(iii)] $f(0) = 1$.
\end{itemize}
-/
theorem putnam_1992_a1
  (f : ℤ → ℤ) :
  (f = fun n ↦ 1 - n) ↔
  (∀ n : ℤ, f (f n) = n) ∧ (∀ n : ℤ, f (f (n + 2) + 2) = n) ∧ (f 0 = 1) :=
sorry
