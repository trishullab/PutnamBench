import Mathlib

open Topology Filter Function Nat

-- Note: uses `0` to indicate not periodic.
abbrev putnam_1984_a6_solution : ℕ := sorry
-- 4
/--
Let $n$ be a positive integer, and let $f(n)$ denote the last nonzero digit in the decimal expansion of $n!$. For instance, $f(5)=2$.
\begin{enumerate}
\item[(a)] Show that if $a_1,a_2,\dots,a_k$ are \emph{distinct} nonnegative integers, then $f(5^{a_1}+5^{a_2}+\dots+5^{a_k})$ depends only on the sum $a_1+a_2+\dots+a_k$.
\item[(b)] Assuming part (a), we can define $g(s)=f(5^{a_1}+5^{a_2}+\dots+5^{a_k})$, where $s=a_1+a_2+\dots+a_k$. Find the least positive integer $p$ for which $g(s)=g(s + p)$, for all $s \geq 1$, or else show that no such $p$ exists.
\end{enumerate}
-/
theorem putnam_1984_a6
    (f : ℕ → ℕ)
    (hf : ∀ n, some (f n) = (Nat.digits 10 (n !)).find? (fun d ↦ d ≠ 0))
    (P : (ℕ → ℕ) → ℕ → Prop)
    (P_def : ∀ g p, P g p ↔
      if p = 0 then (∀ q > 0, ¬ Periodic g q) else IsLeast {q | 0 < q ∧ Periodic g q} p) :
    ∃ g : ℕ → ℕ,
      (∀ᵉ (k > 0) (a : Fin k → ℕ) (ha : Injective a), f (∑ i, 5 ^ (a i)) = g (∑ i, a i)) ∧
      P g putnam_1984_a6_solution :=
  sorry
