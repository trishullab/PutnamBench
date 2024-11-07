import Mathlib

/--
\begin{enumerate}
\item[(a)] Prove that there exist integers $a,b,c$, not all zero and each of absolute value less than one million, such that $|a+b\sqrt{2}+c\sqrt{3}|<10^{-11}$.
\item[(b)] Let $a,b,c$ be integers, not all zero and each of absolute value less than one million. Prove that $|a+b\sqrt{2}+c\sqrt{3}|>10^{-21}$.
\end{enumerate}
-/
theorem putnam_1980_a4
    (abcvals : ℤ → ℤ → ℤ → Prop)
    (habcvals : ∀ a b c : ℤ, abcvals a b c ↔ (a = 0 ∧ b = 0 ∧ c = 0) ∧ |a| < 1000000 ∧ |b| < 1000000 ∧ |c| < 1000000) :
    (∃ a b c : ℤ,
      abcvals a b c ∧
      |a + b * Real.sqrt 2 + c * Real.sqrt 3| < 10 ^ (-(11 : ℝ))) ∧
      (∀ a b c : ℤ, abcvals a b c → |a + b * Real.sqrt 2 + c * Real.sqrt 3| > 10 ^ (-(21 : ℝ))) :=
  sorry
