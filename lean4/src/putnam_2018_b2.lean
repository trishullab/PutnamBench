import Mathlib

/--
Let $n$ be a positive integer, and let $f_n(z) = n + (n-1)z + (n-2)z^2 + \cdots + z^{n-1}$. Prove that $f_n$ has no roots in the closed unit disk $\{z \in \mathbb{C}: |z| \leq 1\}$.
-/
theorem putnam_2018_b2
(n : ℕ)
(hn : n > 0)
(f : ℕ → ℂ → ℂ)
(hf : ∀ z : ℂ, f n z = ∑ i ∈ Finset.range n, (n - i) * z^i)
: ∀ z : ℂ, ‖z‖ ≤ 1 → f n z ≠ 0 :=
sorry
