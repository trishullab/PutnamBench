import Mathlib

/--
Let $p$ be in the set $\{3,5,7,11,\dots\}$ of odd primes and let $F(n)=1+2n+3n^2+\dots+(p-1)n^{p-2}$. Prove that if $a$ and $b$ are distinct integers in $\{0,1,2,\dots,p-1\}$ then $F(a)$ and $F(b)$ are not congruent modulo $p$, that is, $F(a)-F(b)$ is not exactly divisible by $p$.
-/
theorem putnam_1983_a3
(p : ℕ)
(F : ℕ → ℕ)
(poddprime : Odd p ∧ p.Prime)
(hF : ∀ n : ℕ, F n = ∑ i ∈ Finset.range (p - 1), (i + 1) * n ^ i)
: ∀ a ∈ Finset.Icc 1 p, ∀ b ∈ Finset.Icc 1 p, a ≠ b → ¬(F a ≡ F b [MOD p]) :=
sorry
