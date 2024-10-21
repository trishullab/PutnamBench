import Mathlib

open RingHom Set Nat

/--
Let $p$ be a prime and $m \geq n$ be non-negative integers. Show that $\binom{pm}{pn} = \binom{m}{n} \pmod p$, where $\binom{m}{n}$ is the binomial coefficient.
-/
theorem putnam_1977_a5
(p m n : ℕ)
(hp : Nat.Prime p)
(hmgen : m ≥ n)
: (choose (p * m) (p * n) ≡ choose m n [MOD p]) :=
sorry
