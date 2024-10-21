import Mathlib

open Filter Topology

/--
For any integer $a$, set $n_a=101a-100 \cdot 2^a$. Show that for $0 \leq a,b,c,d \leq 99$, $n_a+n_b \equiv n_c+n_d \pmod{10100}$ implies $\{a,b\}=\{c,d\}$.
-/
theorem putnam_1994_b6
(n : ℕ → ℤ)
(hn : ∀ a : ℕ, n a = 101 * a - 100 * 2 ^ a)
: ∀ a b c d : Set.Icc 0 99, (n a + n b ≡ n c + n d [ZMOD 10100]) → (({a, b} : Set (Set.Icc 0 99)) = {c, d}) :=
sorry
