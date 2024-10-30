import Mathlib

open Filter Topology

/--
Let $F_0, F_1, \ldots$ be the sequence of Fibonacci numbers, with $F_0 = 0$, $F_1 = 1$, and $F_n = F_{n-1} + F_{n-2}$ for $n \geq 2$. For $m > 2$, let $R_m$ be the remainder when the product $\prod_{k=1}^{F_{m-1}} k^k$ is divided by $F_m$. Prove that $R_m$ is also a Fibonacci number.
-/
theorem putnam_2021_b4
(F : ℕ → ℕ)
(hF : ∀ n, F (n + 2) = F (n + 1) + F n)
(F01 : F 0 = 0 ∧ F 1 = 1)
: ∀ m, m > 2 → (∃ p, (∏ k : Set.Icc 1 (F m - 1),  (k.1 ^ k.1)) % F m = F p) :=
sorry
