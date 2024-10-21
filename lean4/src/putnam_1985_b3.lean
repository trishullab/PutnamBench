import Mathlib

open Set Filter Topology Real Polynomial Function

/--
Let
\[
\begin{array}{cccc} a_{1,1} & a_{1,2} & a_{1,3} & \dots \\
a_{2,1} & a_{2,2} & a_{2,3} & \dots \\
a_{3,1} & a_{3,2} & a_{3,3} & \dots \\
\vdots & \vdots & \vdots & \ddots
\end{array}
\]
be a doubly infinite array of positive integers, and suppose each positive integer appears exactly eight times in the array. Prove that $a_{m,n} > mn$ for some pair of positive integers $(m,n)$.
-/
theorem putnam_1985_b3
(a : ℕ → ℕ → ℕ)
(apos : ∀ m n : ℕ, a m n > 0)
(ha : ∀ k : ℕ, k > 0 → {(m, n) : ℕ × ℕ | m > 0 ∧ n > 0 ∧ a m n = k}.encard = 8)
: (∃ m n, m > 0 ∧ n > 0 ∧ a m n > m * n) :=
sorry
