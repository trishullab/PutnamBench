import Mathlib

open Topology Filter Nat Set Interval

/--
Let $f: [0,1] \to \mathbb{R}$ be a function for which there exists a constant $K>0$ such that $\left| f(x) - f(y) \right| \leq K \left| x - y \right|$ for all $x,y \in [0,1]$. Suppose also that for each rational number $r \in [0,1]$, there exist integers $a$ and $b$ such that $f(r) = a + br$. Prove that there exist finitely many intervals $I_1, \dots, I_n$ such that $f$ is a linear function on each $I_i$ and $[0,1] = \bigcup_{i=1}^n I_i$.
-/
theorem putnam_2014_b6
(f : ℝ → ℝ)
(hlip : ∃ K > 0, ∀ x ∈ Icc 0 1, ∀ y ∈ Icc 0 1, |f x - f y| ≤ K * |x - y|)
(hrat : ∀ r ∈ Icc (0 : ℚ) 1, ∃ a b : ℤ, f r = a + b * r)
: (∃ I : Finset (Interval ℝ), (∀ Ii ∈ I, ∃ m c : ℝ, ∀ x ∈ coeHom Ii, f x = c + m * x) ∧ Icc 0 1 = ⋃ Ii ∈ I, coeHom Ii) :=
sorry
