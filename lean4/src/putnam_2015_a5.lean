import Mathlib

/--
Let $q$ be an odd positive integer, and let $N_q$ denote the number of integers $a$ such that $0<a<q/4$ and $\gcd(a,q)=1$. Show that $N_q$ is odd if and only if $q$ is of the form $p^k$ with $k$ a positive integer and $p$ a prime congruent to $5$ or $7$ modulo $8$.
-/
theorem putnam_2015_a5
(q : ℕ)
(Nq : ℕ)
(qodd : Odd q)
(qpos : q > 0)
(hNq : Nq = {a : ℕ | 0 < a ∧ a < (q : ℝ) / 4 ∧ Nat.gcd a q = 1}.encard)
: Odd Nq ↔ ∃ p k : ℕ, q = p ^ k ∧ k > 0 ∧ p.Prime ∧ (p % 8 = 5 ∨ p % 8 = 7) :=
sorry
